.class public final synthetic Lz5/x$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz5/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lz5/j;->values()[Lz5/j;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_8
    aput v1, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_a} :catch_a

    :catch_a
    const/4 v1, 0x2

    :try_start_b
    aput v1, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_d} :catch_d

    :catch_d
    sput-object v0, Lz5/x$a;->a:[I

    return-void
.end method
