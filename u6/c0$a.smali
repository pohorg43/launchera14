.class public final synthetic Lu6/c0$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu6/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    invoke-static {}, Lc6/k;->values()[Lc6/k;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_9
    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_b} :catch_b

    :catch_b
    const/4 v3, 0x2

    :try_start_c
    aput v3, v0, v2
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_e} :catch_e

    :catch_e
    const/4 v4, 0x3

    :try_start_f
    aput v4, v0, v3
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_11} :catch_11

    :catch_11
    const/4 v5, 0x4

    :try_start_12
    aput v5, v0, v4
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_14} :catch_14

    :catch_14
    sput-object v0, Lu6/c0$a;->a:[I

    invoke-static {}, Li5/d0;->values()[Li5/d0;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_1d
    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    aput v3, v0, v3
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_21} :catch_21

    :catch_21
    :try_start_21
    aput v4, v0, v4
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_23} :catch_23

    :catch_23
    :try_start_23
    aput v5, v0, v2
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_25} :catch_25

    :catch_25
    invoke-static {}, Lc6/x;->values()[Lc6/x;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_2c
    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2e
    aput v3, v0, v2
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_30} :catch_30

    :catch_30
    :try_start_30
    aput v4, v0, v5
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_32} :catch_32

    :catch_32
    :try_start_32
    aput v5, v0, v3
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_34} :catch_34

    :catch_34
    const/4 v6, 0x5

    :try_start_35
    aput v6, v0, v4
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_37} :catch_37

    :catch_37
    const/4 v7, 0x6

    :try_start_38
    aput v7, v0, v6
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_3a} :catch_3a

    :catch_3a
    invoke-static {}, Lc6/b$c;->values()[Lc6/b$c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_41
    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_43} :catch_43

    :catch_43
    :try_start_43
    aput v3, v0, v2
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_45} :catch_45

    :catch_45
    :try_start_45
    aput v4, v0, v3
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_47} :catch_47

    :catch_47
    :try_start_47
    aput v5, v0, v4
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    aput v6, v0, v5
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_4b} :catch_4b

    :catch_4b
    :try_start_4b
    aput v7, v0, v6
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4d} :catch_4d

    :catch_4d
    const/4 v8, 0x7

    :try_start_4e
    aput v8, v0, v7
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_50} :catch_50

    :catch_50
    sput-object v0, Lu6/c0$a;->b:[I

    invoke-static {}, Li5/f;->values()[Li5/f;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_59
    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_5b} :catch_5b

    :catch_5b
    :try_start_5b
    aput v3, v0, v2
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5d} :catch_5d

    :catch_5d
    :try_start_5d
    aput v4, v0, v3
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_5f} :catch_5f

    :catch_5f
    :try_start_5f
    aput v5, v0, v4
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_61} :catch_61

    :catch_61
    :try_start_61
    aput v6, v0, v5
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_63} :catch_63

    :catch_63
    :try_start_63
    aput v7, v0, v6
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_65} :catch_65

    :catch_65
    invoke-static {}, Lc6/s$c;->values()[Lc6/s$c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_6c
    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_6e} :catch_6e

    :catch_6e
    :try_start_6e
    aput v3, v0, v2
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_70} :catch_70

    :catch_70
    :try_start_70
    aput v4, v0, v3
    :try_end_72
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_72} :catch_72

    :catch_72
    invoke-static {}, Lc6/q$b$c;->values()[Lc6/q$b$c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_79
    aput v2, v0, v1
    :try_end_7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_7b} :catch_7b

    :catch_7b
    :try_start_7b
    aput v3, v0, v2
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b .. :try_end_7d} :catch_7d

    :catch_7d
    :try_start_7d
    aput v4, v0, v3
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d .. :try_end_7f} :catch_7f

    :catch_7f
    :try_start_7f
    aput v5, v0, v4
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_81} :catch_81

    :catch_81
    invoke-static {}, Ly6/e2;->values()[Ly6/e2;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_88
    aput v2, v0, v2
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_88 .. :try_end_8a} :catch_8a

    :catch_8a
    :try_start_8a
    aput v3, v0, v3
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8a .. :try_end_8c} :catch_8c

    :catch_8c
    :try_start_8c
    aput v4, v0, v1
    :try_end_8e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_8e} :catch_8e

    :catch_8e
    return-void
.end method
