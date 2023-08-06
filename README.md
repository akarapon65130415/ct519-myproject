# ct519-myproject
Akarapon Lhuengaroon, ID:65130415

1.สร้าง Static Web Application ด้วยโปรแกรม Visual Studio Code บน windows โดยใช้ภาษา Python และใช Service Django ในการ run service เพื่อพัฒนาหน้าเว็บไซต์ โดยมีฟังก์ชันการทำงาน คือ 
- หน้า Home page ประกอบด้วยชื่อและ window สำหรับคลิกไปในหน้าถัดไป
- หน้า Mybooks > เป็นหน้าต่างข้อมูลประชากร โดยสามารถเพิ่มและแก้ไขข้อมูลในหน้าเว็บได้
- หน้า Form > มีสำหรับการเพิ่มข้อมูลประชากร
- หน้า Research > มีรายละเอียดงานวิจัยที่สนใจ
- หน้า About > เป็นชื่อนักศึกษา รหัสประจำตัว และรูปภาพ
- Web app มีการเพิ่ม css เพื่อเติมสีพื้นหลังให้กับหน้า web 
- Web app ใช้ Database SQLite ที่ Plugin มากับ Django Service 

2. Deploy Code ด้วย Docker และ build docker image file *ใช้การ Deploy และ Build image บน cmd VScode เนื่องจากใน Ubuntu version ของ Python และ Django service ไม่ Compacrtable กัน 
- Deploy docker ด้วยการสร้าง Dockerfile, requirements.txt, และ docker-compose.yml จากนั้น config ให้สามารถ build docker image ออกมาได้
- คำสั่ง build บน cmd > “docker compose up –build” 
- เมื่อได้ไฟล์ image แล้วให้ทดลอง Docker run เพื่อทดสอบการทำงานของ web apps *ใช้ Docker Desktop ในการตรวจสอบ และสั่ง run เมื่อมีการ Build เสร็จจะได้ไฟล์ image ไฟล์ image ที่ใช้าำหรับ run container
- ทดสอบการใช้งาน web app ด้วย http://127.0.0.1:8000/ เป็น port ที่ config ไว้ตอน deploy/build docker image file  
- push docker image file ขึ้นไปบน Docker Hub link: https://hub.docker.com/repositories/akarapon65130415

3. Push Source Code ขึ้น Github Link: https://github.com/akarapon65130415/ct519-myproject
4. push web app ขึ้นบน AWS โดยการสร้าง EC2 host และติดตั้ง Docker service จากนั้น Build docker image file ขึ้นมา และ run container 
- config security เพื่อเปิด port การเข้าถึง web server 
- AWS web apps link: http://54.254.232.159:8080/
