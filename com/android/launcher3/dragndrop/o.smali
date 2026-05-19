.class public final synthetic Lcom/android/launcher3/dragndrop/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/dragndrop/DragView;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/DragView;F)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/o;->a:Lcom/android/launcher3/dragndrop/DragView;

    iput p2, p0, Lcom/android/launcher3/dragndrop/o;->b:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/o;->a:Lcom/android/launcher3/dragndrop/DragView;

    iget p0, p0, Lcom/android/launcher3/dragndrop/o;->b:F

    check-cast p1, Ljava/util/function/BiConsumer;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/dragndrop/DragView;->d(Lcom/android/launcher3/dragndrop/DragView;FLjava/util/function/BiConsumer;)V

    return-void
.end method
