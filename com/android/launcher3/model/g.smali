.class public final synthetic Lcom/android/launcher3/model/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher3/model/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/g;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/model/g;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/model/g;->b:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :goto_e
    iget-object p0, p0, Lcom/android/launcher3/model/g;->b:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/memory/KillAppWrapper;->e(Ljava/util/ArrayList;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
