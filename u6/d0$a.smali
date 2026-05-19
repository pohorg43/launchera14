.class public final synthetic Lu6/d0$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu6/d0;
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
    .registers 6

    invoke-static {}, Lc6/j;->values()[Lc6/j;

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
    sput-object v0, Lu6/d0$a;->a:[I

    invoke-static {}, Li5/b$a;->values()[Li5/b$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_1d
    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_1f
    aput v3, v0, v2
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_21} :catch_21

    :catch_21
    :try_start_21
    aput v4, v0, v3
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_23} :catch_23

    :catch_23
    :try_start_23
    aput v5, v0, v4
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
    const/4 v1, 0x5

    :try_start_35
    aput v1, v0, v4
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_37} :catch_37

    :catch_37
    const/4 v2, 0x6

    :try_start_38
    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_3a} :catch_3a

    :catch_3a
    sput-object v0, Lu6/d0$a;->b:[I

    return-void
.end method
