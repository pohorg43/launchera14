.class public final Lb5/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/JvmName;
    name = "KCallablesJvm"
.end annotation


# direct methods
.method public static final a(Lz4/c;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/c<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p0, Lz4/i;

    const/4 v2, 0x1

    if-eqz v1, :cond_41

    move-object v1, p0

    check-cast v1, Lz4/n;

    invoke-static {v1}, Lb5/c;->b(Lz4/n;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v3

    goto :goto_19

    :cond_18
    move v3, v2

    :goto_19
    if-eqz v3, :cond_60

    invoke-static {v1}, Lb5/c;->c(Lz4/n;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    if-eqz v1, :cond_60

    check-cast p0, Lz4/i;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lz4/i;->getSetter()Lz4/i$a;

    move-result-object p0

    invoke-static {p0}, Lb5/c;->d(Lz4/h;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_3d

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result p0

    goto :goto_3e

    :cond_3d
    move p0, v2

    :goto_3e
    if-eqz p0, :cond_60

    goto :goto_61

    :cond_41
    check-cast p0, Lz4/n;

    invoke-static {p0}, Lb5/c;->b(Lz4/n;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    goto :goto_4f

    :cond_4e
    move v0, v2

    :goto_4f
    if-eqz v0, :cond_60

    invoke-static {p0}, Lb5/c;->c(Lz4/n;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_5c

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result p0

    goto :goto_5d

    :cond_5c
    move p0, v2

    :goto_5d
    if-eqz p0, :cond_60

    goto :goto_61

    :cond_60
    const/4 v2, 0x0

    :goto_61
    return v2
.end method

.method public static final b(Lz4/c;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/c<",
            "*>;Z)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p0, Lz4/i;

    if-eqz v1, :cond_36

    move-object v1, p0

    check-cast v1, Lz4/n;

    invoke-static {v1}, Lb5/c;->b(Lz4/n;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-nez v2, :cond_13

    goto :goto_16

    :cond_13
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :goto_16
    invoke-static {v1}, Lb5/c;->c(Lz4/n;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_1d

    goto :goto_20

    :cond_1d
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :goto_20
    check-cast p0, Lz4/i;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lz4/i;->getSetter()Lz4/i$a;

    move-result-object p0

    invoke-static {p0}, Lb5/c;->d(Lz4/h;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_31

    goto/16 :goto_d4

    :cond_31
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto/16 :goto_d4

    :cond_36
    instance-of v0, p0, Lz4/n;

    if-eqz v0, :cond_53

    check-cast p0, Lz4/n;

    invoke-static {p0}, Lb5/c;->b(Lz4/n;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_43

    goto :goto_46

    :cond_43
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :goto_46
    invoke-static {p0}, Lb5/c;->c(Lz4/n;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_4e

    goto/16 :goto_d4

    :cond_4e
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto/16 :goto_d4

    :cond_53
    instance-of v0, p0, Lz4/n$b;

    if-eqz v0, :cond_76

    move-object v0, p0

    check-cast v0, Lz4/n$b;

    invoke-interface {v0}, Lz4/n$a;->b()Lz4/n;

    move-result-object v0

    invoke-static {v0}, Lb5/c;->b(Lz4/n;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_65

    goto :goto_68

    :cond_65
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :goto_68
    check-cast p0, Lz4/h;

    invoke-static {p0}, Lb5/c;->d(Lz4/h;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_72

    goto/16 :goto_d4

    :cond_72
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto :goto_d4

    :cond_76
    instance-of v0, p0, Lz4/i$a;

    if-eqz v0, :cond_98

    move-object v0, p0

    check-cast v0, Lz4/i$a;

    invoke-interface {v0}, Lz4/n$a;->b()Lz4/n;

    move-result-object v0

    invoke-static {v0}, Lb5/c;->b(Lz4/n;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_88

    goto :goto_8b

    :cond_88
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :goto_8b
    check-cast p0, Lz4/h;

    invoke-static {p0}, Lb5/c;->d(Lz4/h;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-nez p0, :cond_94

    goto :goto_d4

    :cond_94
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto :goto_d4

    :cond_98
    instance-of v0, p0, Lz4/h;

    if-eqz v0, :cond_d5

    move-object v0, p0

    check-cast v0, Lz4/h;

    invoke-static {v0}, Lb5/c;->d(Lz4/h;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_a6

    goto :goto_a9

    :cond_a6
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :goto_a9
    invoke-static {p0}, Lc5/w0;->a(Ljava/lang/Object;)Lc5/i;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_bb

    invoke-virtual {p0}, Lc5/i;->h()Ld5/f;

    move-result-object p0

    if-eqz p0, :cond_bb

    invoke-interface {p0}, Ld5/f;->b()Ljava/lang/reflect/Member;

    move-result-object p0

    goto :goto_bc

    :cond_bb
    move-object p0, v1

    :goto_bc
    instance-of v2, p0, Ljava/lang/reflect/AccessibleObject;

    if-eqz v2, :cond_c3

    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/AccessibleObject;

    :cond_c3
    if-nez v1, :cond_c6

    goto :goto_ca

    :cond_c6
    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :goto_ca
    invoke-static {v0}, Lb5/c;->a(Lz4/h;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    if-nez p0, :cond_d1

    goto :goto_d4

    :cond_d1
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :goto_d4
    return-void

    :cond_d5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown callable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
