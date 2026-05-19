.class public Lcom/oplus/log/util/ReflectHelp;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static DEBUG:Z = false

.field private static TAG:Ljava/lang/String; = "ReflectHelp"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClassFromName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    goto :goto_16

    :catchall_5
    move-exception p0

    sget-boolean v0, Lcom/oplus/log/util/ReflectHelp;->DEBUG:Z

    if-eqz v0, :cond_15

    sget-object v0, Lcom/oplus/log/util/ReflectHelp;->TAG:Ljava/lang/String;

    const-string v1, "reflect:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0, v1, v0}, Li2/a;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return-object p0
.end method

.method public static getConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    goto :goto_1a

    :catchall_9
    move-exception p0

    sget-boolean p1, Lcom/oplus/log/util/ReflectHelp;->DEBUG:Z

    if-eqz p1, :cond_19

    sget-object p1, Lcom/oplus/log/util/ReflectHelp;->TAG:Ljava/lang/String;

    const-string v0, "reflect:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, v0, p1}, Li2/a;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return-object p0
.end method

.method public static getConstructorForInnerClass(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 6

    const-string v0, "\\$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/Class;

    array-length v3, v0

    if-lt v3, v2, :cond_3a

    const/4 v2, 0x0

    aget-object v0, v0, v2

    :try_start_11
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v1, v2

    :goto_17
    array-length v3, p1

    if-ge v2, v3, :cond_22

    add-int/lit8 v3, v2, 0x1

    aget-object v2, p1, v2

    aput-object v2, v1, v3

    move v2, v3

    goto :goto_17

    :cond_22
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_2a

    goto :goto_3b

    :catchall_2a
    move-exception p0

    sget-boolean p1, Lcom/oplus/log/util/ReflectHelp;->DEBUG:Z

    if-eqz p1, :cond_3a

    sget-object p1, Lcom/oplus/log/util/ReflectHelp;->TAG:Ljava/lang/String;

    const-string v0, "reflect:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, v0, p1}, Li2/a;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_3a
    const/4 p0, 0x0

    :goto_3b
    return-object p0
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_23

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_23

    :cond_a
    :try_start_a
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_e} :catch_f

    goto :goto_22

    :catch_f
    :try_start_f
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/NoSuchFieldException; {:try_start_f .. :try_end_13} :catch_14

    goto :goto_22

    :catch_14
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oplus/log/util/ReflectHelp;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    :goto_22
    return-object p0

    :cond_23
    :goto_23
    return-object v0
.end method

.method public static getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_5

    if-eqz p0, :cond_b

    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    return-object v0

    :cond_c
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :cond_12
    invoke-static {p0, p2}, Lcom/oplus/log/util/ReflectHelp;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_31

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :try_start_1c
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_21

    return-object p0

    :catchall_21
    move-exception p0

    sget-boolean p1, Lcom/oplus/log/util/ReflectHelp;->DEBUG:Z

    if-eqz p1, :cond_31

    sget-object p1, Lcom/oplus/log/util/ReflectHelp;->TAG:Ljava/lang/String;

    const-string p2, "reflect:"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p0, p2, p1}, Li2/a;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_31
    return-object v0
.end method

.method public static getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_11

    goto :goto_22

    :catchall_11
    move-exception p0

    sget-boolean p1, Lcom/oplus/log/util/ReflectHelp;->DEBUG:Z

    if-eqz p1, :cond_21

    sget-object p1, Lcom/oplus/log/util/ReflectHelp;->TAG:Ljava/lang/String;

    const-string v0, "reflect:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, v0, p1}, Li2/a;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_21
    const/4 p0, 0x0

    :goto_22
    return-object p0
.end method

.method public static getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_23

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_23

    :cond_a
    :try_start_a
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_f

    goto :goto_22

    :catch_f
    :try_start_f
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_13} :catch_14

    goto :goto_22

    :catch_14
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/oplus/log/util/ReflectHelp;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    :goto_22
    return-object p0

    :cond_23
    :goto_23
    return-object v0
.end method

.method public static getObjectByConstructor(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_11

    goto :goto_22

    :catchall_11
    move-exception p0

    sget-boolean p1, Lcom/oplus/log/util/ReflectHelp;->DEBUG:Z

    if-eqz p1, :cond_21

    sget-object p1, Lcom/oplus/log/util/ReflectHelp;->TAG:Ljava/lang/String;

    const-string p2, "reflect:"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p0, p2, p1}, Li2/a;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_21
    const/4 p0, 0x0

    :goto_22
    return-object p0
.end method

.method public static getObjectFromInnerClass(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p3}, Lcom/oplus/log/util/ReflectHelp;->getConstructorForInnerClass(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    if-eqz v1, :cond_48

    array-length v1, p4

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v3, v1, [Ljava/lang/Object;

    if-lt v1, v2, :cond_48

    const-string v1, "\\$"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_48

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1, p1}, Lcom/oplus/log/util/ReflectHelp;->getConstructor(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v3, v2

    :goto_24
    array-length p1, p4

    if-ge v2, p1, :cond_2f

    add-int/lit8 p1, v2, 0x1

    aget-object p2, p4, v2

    aput-object p2, v3, p1

    move v2, p1

    goto :goto_24

    :cond_2f
    invoke-static {p0, p3}, Lcom/oplus/log/util/ReflectHelp;->getConstructorForInnerClass(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_38

    goto :goto_48

    :catchall_38
    move-exception p0

    sget-boolean p1, Lcom/oplus/log/util/ReflectHelp;->DEBUG:Z

    if-eqz p1, :cond_48

    sget-object p1, Lcom/oplus/log/util/ReflectHelp;->TAG:Ljava/lang/String;

    const-string p2, "reflect:"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p0, p2, p1}, Li2/a;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_48
    :goto_48
    return-object v0
.end method

.method public static invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_2d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2d

    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :try_start_e
    invoke-static {v1, p1, p2}, Lcom/oplus/log/util/ReflectHelp;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_2d

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1d

    return-object p0

    :catchall_1d
    move-exception p0

    sget-boolean p1, Lcom/oplus/log/util/ReflectHelp;->DEBUG:Z

    if-eqz p1, :cond_2d

    sget-object p1, Lcom/oplus/log/util/ReflectHelp;->TAG:Ljava/lang/String;

    const-string p2, "reflect:"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p0, p2, p1}, Li2/a;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2d
    :goto_2d
    return-object v0
.end method

.method public static invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_29

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_29

    :cond_a
    :try_start_a
    invoke-static {p0, p1, p2}, Lcom/oplus/log/util/ReflectHelp;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_29

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {p0, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_19

    return-object p0

    :catchall_19
    move-exception p0

    sget-boolean p1, Lcom/oplus/log/util/ReflectHelp;->DEBUG:Z

    if-eqz p1, :cond_29

    sget-object p1, Lcom/oplus/log/util/ReflectHelp;->TAG:Ljava/lang/String;

    const-string p2, "reflect:"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p0, p2, p1}, Li2/a;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_29
    :goto_29
    return-object v0
.end method

.method public static invokeThrowException(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p0, :cond_23

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/oplus/log/util/ReflectHelp;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_1b

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "method is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "obj == null or method is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static modifyFileValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_10

    goto :goto_20

    :catchall_10
    move-exception p0

    sget-boolean p1, Lcom/oplus/log/util/ReflectHelp;->DEBUG:Z

    if-eqz p1, :cond_20

    sget-object p1, Lcom/oplus/log/util/ReflectHelp;->TAG:Ljava/lang/String;

    const-string p2, "reflect:"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p0, p2, p1}, Li2/a;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_20
    :goto_20
    return-void
.end method

.method public static setDebug(Z)V
    .registers 1

    sput-boolean p0, Lcom/oplus/log/util/ReflectHelp;->DEBUG:Z

    return-void
.end method

.method public static setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    if-nez p1, :cond_4

    if-eqz p0, :cond_a

    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    return-void

    :cond_b
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :cond_11
    invoke-static {p0, p2}, Lcom/oplus/log/util/ReflectHelp;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_2f

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :try_start_1b
    invoke-virtual {p0, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_2f

    :catchall_1f
    move-exception p0

    sget-boolean p1, Lcom/oplus/log/util/ReflectHelp;->DEBUG:Z

    if-eqz p1, :cond_2f

    sget-object p1, Lcom/oplus/log/util/ReflectHelp;->TAG:Ljava/lang/String;

    const-string p2, "reflect:"

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p0, p2, p1}, Li2/a;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2f
    :goto_2f
    return-void
.end method
