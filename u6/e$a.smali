.class public final synthetic Lu6/e$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu6/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lc6/a$b$c$c;->values()[Lc6/a$b$c$c;

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
    const/4 v1, 0x2

    :try_start_c
    aput v1, v0, v2
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_e} :catch_e

    :catch_e
    const/4 v2, 0x3

    :try_start_f
    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_11} :catch_11

    :catch_11
    const/4 v1, 0x4

    :try_start_12
    aput v1, v0, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_14} :catch_14

    :catch_14
    const/4 v2, 0x5

    :try_start_15
    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_17} :catch_17

    :catch_17
    const/4 v1, 0x6

    :try_start_18
    aput v1, v0, v2
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_1a} :catch_1a

    :catch_1a
    const/4 v2, 0x7

    :try_start_1b
    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1d} :catch_1d

    :catch_1d
    const/16 v1, 0x8

    :try_start_1f
    aput v1, v0, v2
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_21} :catch_21

    :catch_21
    const/16 v2, 0x9

    :try_start_23
    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_25} :catch_25

    :catch_25
    const/16 v1, 0xa

    :try_start_27
    aput v1, v0, v2
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_29} :catch_29

    :catch_29
    const/16 v2, 0xb

    :try_start_2b
    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2d} :catch_2d

    :catch_2d
    const/16 v1, 0xc

    :try_start_2f
    aput v1, v0, v2
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_31} :catch_31

    :catch_31
    const/16 v2, 0xd

    :try_start_33
    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_35} :catch_35

    :catch_35
    sput-object v0, Lu6/e$a;->a:[I

    return-void
.end method
