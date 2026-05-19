.class public final synthetic Lc5/o$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc5/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "b"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    invoke-static {}, Lb6/a$a;->values()[Lb6/a$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x2

    :try_start_9
    sget-object v3, Lb6/a$a;->e:Lb6/a$a;

    aput v1, v0, v2
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_d} :catch_d

    :catch_d
    const/4 v3, 0x4

    :try_start_e
    sget-object v4, Lb6/a$a;->g:Lb6/a$a;

    aput v2, v0, v3
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_12} :catch_12

    :catch_12
    const/4 v2, 0x3

    const/4 v4, 0x5

    :try_start_14
    sget-object v5, Lb6/a$a;->h:Lb6/a$a;

    aput v2, v0, v4
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_18} :catch_18

    :catch_18
    :try_start_18
    sget-object v5, Lb6/a$a;->f:Lb6/a$a;

    aput v3, v0, v2
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1c
    sget-object v2, Lb6/a$a;->c:Lb6/a$a;

    const/4 v2, 0x0

    aput v4, v0, v2
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_21} :catch_21

    :catch_21
    :try_start_21
    sget-object v2, Lb6/a$a;->d:Lb6/a$a;

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_26} :catch_26

    :catch_26
    sput-object v0, Lc5/o$b;->a:[I

    return-void
.end method
