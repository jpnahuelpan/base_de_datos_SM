import pandas as pd
import random as rd
df=pd.read_csv('personas.csv')
df1=pd.read_csv('single-color-names.csv')
df2=pd.read_csv('precios.csv')
df.drop_duplicates(subset=['RUT'], keep=False, inplace=True)
df2.drop_duplicates(subset=['precio'], keep=False, inplace=True)

rut=df['RUT'].values
nombre=df['NOMBRE'].values
fecha=df['FECHA'].values
colores=df1['Color Name'].values
precios=df2['precio'].values
material=['madera','plastico','metal','comestible']
medio_pago=['efectivo','cheque','credito','debito','paypal']
regiones=['Región de Arica y Parinacota','Región de Tarapacá.','Región de Antofagasta.','Región de Atacama.','Región de Coquimbo.',
          'Región de Valparaíso.','Región Metropolitana de Santiago.','Región del Libertador General Bernardo O’Higgins.',
          'Región del Maule.','Región del Ñuble.','Región del Biobío.','Región de La Araucanía.','Región de Los Ríos.',
          'Región de Los Lagos.','Región de Aysén del General Carlos Ibáñez del Campo.','Región de Magallanes y la Antártica Chilena.']
tipo_venta=['servicio','producto']

f=open("datos_sm_db.sql","a")
f.write('INSERT INTO s.Emprendedor VALUES\n')
num=50
for i in range(0, num):
    f.write("('%s','%s','%s',%i,'%s')" %(rut[i], 'emprendedor'+str(i),
                                         'www.Emprendedor'+str(i)+'.com',235467+i,'emprendedor'+str(i)+'@gmail.com'))
    if i!=(num-1):
        f.write(',\n')
    i=i+1
f.write(';\n\n\n')   


f.write('INSERT INTO s.Cliente VALUES\n')

for i in range(0, num):
    f.write("('%s','%s','%s',%i,'%s')" %(rut[i+num+1], 'cliente'+str(i),fecha[i],
                                         465467+i,'cliente'+str(i)+'@gmail.com'))
    if i!=(num-1):
        f.write(',\n')
    i=i+1
f.write(';\n\n\n')   

f.write('INSERT INTO s.Producto VALUES\n')
for i in range(0, num):
    f.write("(%i,'%s',%i,%i,'%s','%s')" %(i, 'producto'+str(i),100+i*(100-i),
                                          50 +i*(1000-i-10),colores[i], material[int(rd.randint(1,3))]))
    if i!=(num-1):
        f.write(',\n')
    i=i+1
f.write(';\n\n\n')   

f.write('INSERT INTO s.Direccion VALUES\n')
for i in range(0, num*2):
    f.write("(%i,'%s',%i,'%s')" %(i, 'calle'+str(i),i*(100-i),'empty'))
    if i!=((num*2)-1):
        f.write(',\n')
    i=i+1
f.write(';\n\n\n')   


f.write('INSERT INTO s.Categoria VALUES\n')
for i in range(0, 11):
    f.write("(%i,'%s')" %(i, 'categoria'+str(i)))
    if i!=(10):
        f.write(',\n')
    i=i+1
f.write(';\n\n\n')   

f.write('INSERT INTO s.MedioPago VALUES\n')
for i in range(0, len(medio_pago)):
    f.write("(%i,'%s')" %(10+i, medio_pago[i]))
    if i!=(len(medio_pago)-1):
        f.write(',\n')
    i=i+1
f.write(';\n\n\n')   


f.write('INSERT INTO s.Region VALUES\n')
for i in range(0, len(regiones)):
    f.write("('%s')" %(regiones[i]))
    if i!=(len(regiones)-1):
        f.write(',\n')
    i=i+1
f.write(';\n\n\n')   

f.write('INSERT INTO s.Servicio VALUES\n')
for i in range(0, 31):
    f.write("(%i,'%s',%i,%i,%i)" %(i,'servicio'+str(i),i*(100-i), [0,12,16,18][int(rd.randint(0,3))], int(rd.randint(0,10)) ))
    if i!=(30):
        f.write(',\n')
    i=i+1
f.write(';\n\n\n')   


f.write('INSERT INTO s.Ciudad VALUES\n')
for i in range(0, len(regiones)*5):
    f.write("('%s','%s')" %('ciudad'+str(i),regiones[int(rd.randint(0,14))]))
    if i!=((len(regiones)*5)-1):
        f.write(',\n')
    i=i+1
f.write(';\n\n\n')   

f.write('INSERT INTO s.Tiene VALUES\n')
for i in range(0, num*2):
    f.write("(%i,'%s')" %(i,'ciudad'+ str(int(rd.randint(0,(len(regiones)*5)-1)))))
    if i!=((num*2)-1):
        f.write(',\n')
    i=i+1
f.write(';\n\n\n')   

f.write('INSERT INTO s.Atiende VALUES\n')
for i in range(0, num):
    f.write("(%i,'%s')" %(i,rut[i]))
    if i!=(num-1):
        f.write(',\n')
    i=i+1
f.write(';\n\n\n')  

f.write('INSERT INTO s.Despacho VALUES\n')
for i in range(0, num):
    f.write("(%i,'%s')" %(i+num,rut[i+num+1]))
    if i!=(num-1):
        f.write(',\n')
    i=i+1
f.write(';\n\n\n')  


f.write('INSERT INTO s.ofreceServicio VALUES\n')
for i in range(0, num):
    f.write("('%s',%i,'%s','%s',%i)" %(rut[int(rd.randint(0,49))],int(rd.randint(0,30)),
                                    fecha[int(rd.randint(0,len(fecha)-1))],'01/01/2030',int(rd.randint(5000,50000))))
    if i!=(num-1):
        f.write(',\n')
    i=i+1
f.write(';\n\n\n')  
                                    
                                    
f.write('INSERT INTO s.ofreceProducto VALUES\n')
for i in range(0, num):
    f.write("('%s',%i,'%s','%s' ,%i)" %(rut[int(rd.randint(0,49))],int(rd.randint(0,49)),
                                    fecha[int(rd.randint(0,len(fecha)-1))],'01/01/2030',int(rd.randint(0,500))))
    if i!=(num-1):
        f.write(',\n')
    i=i+1
f.write(';\n\n\n')                                      
      
      
                                    
f.write('INSERT INTO s.Monto VALUES\n')
for i in range(0, len(precios)):
    f.write("(%i ,%i)" %(precios[i],precios[i]+int(precios[i]*0.19)))
    if i!=(len(precios)-1):
        f.write(',\n')
    i=i+1
f.write(';\n\n\n')                                             

                                    
f.write('INSERT INTO s.Maestro VALUES\n')
for i in range(0, 11):
    f.write("(%i ,'%s','%s','%s','%s')" %(i,tipo_venta[int(rd.randint(0,1))],'empty',
                                        fecha[int(rd.randint(0,len(fecha)-1))], int(rd.randint(0,1))  ))
    if i!=(10):
        f.write(',\n')
    i=i+1
f.write(';\n\n\n') 
                                    
                                    
f.write('INSERT INTO s.compraProducto VALUES\n')
for i in range(0, num):
    f.write("(%i ,'%s',%i,%i,%i)" %(int(rd.randint(0,49)),rut[int(rd.randint(num+1,(num*2)-3))],
                           precios[int(rd.randint(0,len(precios)))-1],int(rd.randint(0,10)),10+int(rd.randint(0,4)) ))
    if i!=(num-1):
        f.write(',\n')
    i=i+1
f.write(';\n\n\n') 
                                                            
                                    
f.write('INSERT INTO s.compraServicio VALUES\n')
for i in range(0, num):
    f.write("('%s',%i,%i,%i)" %(rut[int(rd.randint(num+1,(num*2)-3))],int(rd.randint(0,10)),10+int(rd.randint(0,4)),
                                int(rd.randint(0,30)) ))
    if i!=(num-1):
        f.write(',\n')
    i=i+1
f.write(';\n\n\n')  
                                    
                                    
#f.write(';\n\n\n')   
f.close()