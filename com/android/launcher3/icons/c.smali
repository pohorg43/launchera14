.class public final synthetic Lcom/android/launcher3/icons/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/icons/BitmapRenderer;


# instance fields
.field public final synthetic a:Landroid/graphics/Bitmap;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;IIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/c;->a:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/android/launcher3/icons/c;->b:I

    iput p3, p0, Lcom/android/launcher3/icons/c;->c:I

    iput p4, p0, Lcom/android/launcher3/icons/c;->d:I

    iput p5, p0, Lcom/android/launcher3/icons/c;->e:I

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher3/icons/c;->a:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/launcher3/icons/c;->b:I

    iget v2, p0, Lcom/android/launcher3/icons/c;->c:I

    iget v3, p0, Lcom/android/launcher3/icons/c;->d:I

    iget v4, p0, Lcom/android/launcher3/icons/c;->e:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/icons/BitmapRenderer;->c(Landroid/graphics/Bitmap;IIIILandroid/graphics/Canvas;)V

    return-void
.end method
