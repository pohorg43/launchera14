.class public final synthetic Lz4/y$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz4/y;
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

    invoke-static {}, Lz4/u;->values()[Lz4/u;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lz4/u;->b:Lz4/u;

    const/4 v1, 0x1

    aput v1, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_c} :catch_c

    :catch_c
    const/4 v1, 0x2

    :try_start_d
    sget-object v2, Lz4/u;->a:Lz4/u;

    const/4 v2, 0x0

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v2, Lz4/u;->c:Lz4/u;

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_17} :catch_17

    :catch_17
    sput-object v0, Lz4/y$a;->a:[I

    return-void
.end method
