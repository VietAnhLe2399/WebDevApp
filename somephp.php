// đếm số lượng người dùng
SELECT count(*) count_user FROM cuusinhvien

// load tin nhắn
SELECT id_user1, noidung, thoigian FROM tinnhan WHERE (id_user1='$msv' AND id_user2='$msv_user_chat') OR
(id_user1='$msv_user_chat' AND id_user2='$msv') ORDER BY thoigian ASC

// load thông báo
SELECT * FROM thongbao WHERE idcuusinhvien='$msv' ORDER BY thoigian DESC

// load người dùng
SELECT idcuusinhvien, hoten, anh, online FROM cuusinhvien WHERE idnamhoc='$idnamhoc' AND idcuusinhvien!='$msv' ORDER BY online DESC

// thêm người dùng mới
INSERT INTO cuusinhvien(idcuusinhvien, anh, idnamhoc, gioitinh, gioithieu) VALUES ('17020000', 'VNU-UET.jpg', '2017', 'Nam', 'Sinh viên UET - VNU')

// thêm bình luận mới
INSERT INTO binhluan(comment, idbaidang, idcuusinhvien) VALUES ('$comment', '$idbaidang', '$msv')

// thêm thông báo mới
INSERT INTO thongbao(idcuusinhvien, idbaidang, noidung) VALUES ('$msv_chu_post', '$idbaidang', '$message')

// xóa người dùng
$sql .= 'delete from user where  iduser = '.$userId.';';
$sql .= 'delete from cuusinhvien where  idcuusinhvien = "'.$studentId.'";';
