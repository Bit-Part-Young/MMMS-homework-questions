# 《多尺度材料模拟与计算》课程作业相关问题

- 作者：小小角色
- 创建时间：2023.11.02
- 推荐在该 repo 中进行提问 [Issues](https://gitee.com/yangsl306/MMMS-homework-questions/issues/new)；私信问助教也可以

---

## 第一次作业

![Week03](assets/Week03.png)

---

## 第二次作业

- 第 1 题

![Week05-1](assets/Week05-1.png)

>第 1 题中的第二小问，181° 对应的物理量是 $\theta$，不是 $\theta_0$
>
> $\theta_0$ 平衡角为 180°时，对应的体系为二氧化碳(CO2)

参考资料
>Swope W C, Ferguson D M. Alternative expressions for energies and forces due to angle bending and torsional energy[J]. Journal of computational chemistry, 1992, 13(5): 585-594.

---

- 第 2 题

![Week05-2](assets/Week05-2.png)

---

## 第三次作业

![Week06](assets/Week06.png)

---

超算思源一号中使用 LAMMPS 时的相关问题

- 若没有得到结果，请先 `ll` 查看 `.err` 格式的文件大小是否为 0；若不为 0，则说明没有运行成功，出现报错；再查看 `.err` 或 `log.lammps` 文件里的具体内容来查找报错原因。
- **LAMMPS 报错：LAMMPS 命令是一行一行执行的，哪行的命令有问题，它就会停在那，并给出错误信息，还是较容易看懂的；请先自己查看报错信息，并在 LAMMPS 官网上仔细阅读相应命令的手册，并尝试解决**；尝试多次后若无法解决，请将报错信息发给助教。

---

使用网络上的势函数（如 [NIST/MML Center for Theoretical and Computational Materials Science | NIST](https://www.ctcms.nist.gov/)），**请不要修改它的文件名及其后缀！！！其后缀是有特定含义的**，LAMMP 的 in 文件中的 `pair_style` 和 `pair_coeff` 参数也要进行相应的修改（这两个命令是相互绑定的），请阅读 [pair\_style command — LAMMPS documentation](https://docs.lammps.org/pair_style.html)；可通过以下命令把势函数文件直接下载到当前路径

```bash
curl -O potential_file_url

# 示例
curl -O https://www.ctcms.nist.gov/potentials/Download/2009--Zhakhovskii-V-V-Inogamov-N-A-Petrov-Y-V-et-al--Au/2/Au-2009.eam.alloy

# 势函数写法
# eam 格式写法
pair_style   eam
pair_coeff   * * Cu_u6.eam
# eam/alloy 写法
pair_style eam/alloy
pair_coeff * * Au-2009.eam.alloy Au
```

---

## 第四次作业 - MD 大作业

![Week07](assets/Week07.png)

---

### 相关问题

- 直接运行 `atomsk` 出现报错

```bash
atomsk: error while loading shared libraries: libiomp5.so: cannot open shared object file: No such file or directory
```

原因：缺失动态链接库。编译 atomsk 过程中用到了 intel 相关库，使用前需 `module load`

解决方法：执行以下命令

```bash
module load intel/19.0.5
```

---
