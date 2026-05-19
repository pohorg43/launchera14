.class public final synthetic Lcom/android/launcher3/graphics/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/icons/BitmapRenderer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(FLandroid/view/View;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/graphics/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/graphics/c;->c:F

    iput-object p2, p0, Lcom/android/launcher3/graphics/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/graphics/DragPreviewProvider;FI)V
    .registers 4

    iput p3, p0, Lcom/android/launcher3/graphics/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/graphics/c;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/launcher3/graphics/c;->c:F

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/graphics/c;->a:I

    packed-switch v0, :pswitch_data_24

    goto :goto_1a

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/launcher3/graphics/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/graphics/DragPreviewProvider;

    iget p0, p0, Lcom/android/launcher3/graphics/c;->c:F

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;->a(Lcom/android/launcher3/graphics/DragPreviewProvider;FLandroid/graphics/Canvas;)V

    return-void

    :pswitch_10  #0x0
    iget-object v0, p0, Lcom/android/launcher3/graphics/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/graphics/DragPreviewProvider;

    iget p0, p0, Lcom/android/launcher3/graphics/c;->c:F

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;->b(Lcom/android/launcher3/graphics/DragPreviewProvider;FLandroid/graphics/Canvas;)V

    return-void

    :goto_1a
    iget v0, p0, Lcom/android/launcher3/graphics/c;->c:F

    iget-object p0, p0, Lcom/android/launcher3/graphics/c;->b:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->a(FLandroid/view/View;Landroid/graphics/Canvas;)V

    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_10  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
