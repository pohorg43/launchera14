.class public final Lg1/z$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz0/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg1/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz0/w<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1  # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg1/z$a;->a:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 1

    iget-object p0, p0, Lg1/z$a;->a:Landroid/graphics/Bitmap;

    invoke-static {p0}, Lt1/f;->d(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public b()Ljava/lang/Class;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-class p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lg1/z$a;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public recycle()V
    .registers 1

    return-void
.end method
