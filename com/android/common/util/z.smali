.class public final synthetic Lcom/android/common/util/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;I)V
    .registers 4

    iput p2, p0, Lcom/android/common/util/z;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p2, v0, :cond_18

    const/4 v0, 0x3

    if-eq p2, v0, :cond_12

    const/4 v0, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/z;->b:Ljava/util/List;

    return-void

    :cond_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/z;->b:Ljava/util/List;

    return-void

    :cond_18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/z;->b:Ljava/util/List;

    return-void

    :cond_1e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/z;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/common/util/z;->a:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_26

    :pswitch_6  #0x3
    iget-object p0, p0, Lcom/android/common/util/z;->b:Ljava/util/List;

    check-cast p1, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_e  #0x2
    iget-object p0, p0, Lcom/android/common/util/z;->b:Ljava/util/List;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_16  #0x1
    iget-object p0, p0, Lcom/android/common/util/z;->b:Ljava/util/List;

    check-cast p1, Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/launcher3/QuickstepTransitionManager;->c(Ljava/util/List;Landroid/view/View;)V

    return-void

    :pswitch_1e  #0x0
    iget-object p0, p0, Lcom/android/common/util/z;->b:Ljava/util/List;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0, p1}, Lcom/android/common/util/LauncherLayoutUtils;->c(Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void

    :goto_26
    iget-object p0, p0, Lcom/android/common/util/z;->b:Ljava/util/List;

    check-cast p1, Lcom/android/wm/shell/pip/PipMediaController$ActionListener;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/PipMediaController;->a(Ljava/util/List;Lcom/android/wm/shell/pip/PipMediaController$ActionListener;)V

    return-void

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_16  #00000001
        :pswitch_e  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
