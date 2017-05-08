iTowerHaNoi written by Tran Ba Thiet

for iOS 10.0

Language: Swift

MIT license

Mô tả thuật toán: Để hiểu được giải thuật cho bài toán tháp Hà Nội đầu tiên ta phải biết được cách

giải bài toán với số đĩa là 1 và 2.

Ta quy ước: Cột A: là cột nguồn chứa tất cả các đĩa

            Cột B: là cột trung gian

            Cột C: là cột đích

Nếu chỉ có 1 đĩa thì ta di chuyển từ cột A -> cột C -> done

Nếu có 2 đĩa:

            Đầu tiên ta di chuyển đĩa trên cùng ở cột A -> cột B
    
            Sau đó di chuyển đĩa còn lại ở cột A -> cột C

            Và cuối cùng di chuyển đĩa từ cột B -> cột C

Từ 2 trường hợp trên ta đưa ra bài toán đệ quy cho bài toán tháp Hà Nội với số lượng > 3 đĩa

Ta giả sử có n đĩa đc sắp xếp từ lớn đến bé trên cột A.Bài toán quy về chuyển đĩa thứ n từ cột A 

qua cột C và sau đó đặt tất cả (n-1) đĩa còn lại lên.Giải thuật sẽ như sau:

B1: Di chuyển n-1 đĩa từ cột A tới cột trung B

B2: Di chuyển đĩa thứ n từ cột A tới cột C

B3: Di chuyển n-1 đĩa còn lại từ cột B tới cột C
