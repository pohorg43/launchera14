.class public final synthetic Lcom/android/wm/shell/draganddrop/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/draganddrop/DragAndDropController;

.field public final synthetic c:Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V
    .registers 4

    iput p3, p0, Lcom/android/wm/shell/draganddrop/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/a;->b:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/a;->c:Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/draganddrop/a;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/a;->b:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/a;->c:Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    invoke-static {v0, p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->c(Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/a;->b:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/a;->c:Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    invoke-static {v0, p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->d(Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
