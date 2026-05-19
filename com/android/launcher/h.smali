.class public final synthetic Lcom/android/launcher/h;
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

    iput p2, p0, Lcom/android/launcher/h;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    const/4 v0, 0x2

    :cond_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/h;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/h;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_1e

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/android/launcher/h;->b:Ljava/util/List;

    check-cast p1, Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;

    invoke-static {p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController;->g(Ljava/util/List;Lcom/android/wm/shell/compatui/CompatUIWindowManagerAbstract;)V

    return-void

    :pswitch_e  #0x1
    iget-object p0, p0, Lcom/android/launcher/h;->b:Ljava/util/List;

    check-cast p1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_16  #0x0
    iget-object p0, p0, Lcom/android/launcher/h;->b:Ljava/util/List;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher/Launcher;->Z(Ljava/util/List;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void

    :goto_1e
    iget-object p0, p0, Lcom/android/launcher/h;->b:Ljava/util/List;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_e  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
