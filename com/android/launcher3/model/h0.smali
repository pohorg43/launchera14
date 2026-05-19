.class public final synthetic Lcom/android/launcher3/model/h0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/model/h0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/h0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/ItemInstallQueue;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/h0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/h0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/android/launcher3/model/h0;->a:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_11

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/model/h0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/model/ItemInstallQueue;

    check-cast p1, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/ItemInstallQueue;->f(Lcom/android/launcher3/model/ItemInstallQueue;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :goto_11
    iget-object p0, p0, Lcom/android/launcher3/model/h0;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/QuickstepModelDelegate;->c(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/app/prediction/AppTargetEvent;

    move-result-object p0

    return-object p0

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
