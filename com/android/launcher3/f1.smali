.class public final synthetic Lcom/android/launcher3/f1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/OplusLauncherModel;

.field public final synthetic c:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/OplusLauncherModel;Landroid/content/ComponentName;I)V
    .registers 4

    iput p3, p0, Lcom/android/launcher3/f1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/f1;->b:Lcom/android/launcher3/OplusLauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/f1;->c:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/android/launcher3/f1;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_f

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/f1;->b:Lcom/android/launcher3/OplusLauncherModel;

    iget-object p0, p0, Lcom/android/launcher3/f1;->c:Landroid/content/ComponentName;

    invoke-static {v0, p0}, Lcom/android/launcher3/OplusLauncherModel;->l(Lcom/android/launcher3/OplusLauncherModel;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :goto_f
    iget-object v0, p0, Lcom/android/launcher3/f1;->b:Lcom/android/launcher3/OplusLauncherModel;

    iget-object p0, p0, Lcom/android/launcher3/f1;->c:Landroid/content/ComponentName;

    invoke-static {v0, p0}, Lcom/android/launcher3/OplusLauncherModel;->k(Lcom/android/launcher3/OplusLauncherModel;Landroid/content/ComponentName;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
