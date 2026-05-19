.class public final synthetic Lcom/android/launcher/settings/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/Launcher;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/settings/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/j;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/settings/j;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/popup/OplusAlertPopup;Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/settings/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/j;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/settings/j;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/settings/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/j;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/settings/j;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/settings/j;->a:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_1e

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/launcher/settings/j;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/popup/OplusAlertPopup;

    iget-object p0, p0, Lcom/android/launcher/settings/j;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/DialogInterface$OnDismissListener;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/popup/OplusAlertPopup;->a(Lcom/android/launcher3/popup/OplusAlertPopup;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface;)V

    return-void

    :pswitch_12  #0x0
    iget-object v0, p0, Lcom/android/launcher/settings/j;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object p0, p0, Lcom/android/launcher/settings/j;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-static {v0, p0, p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->c(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/Launcher;Landroid/content/DialogInterface;)V

    return-void

    :goto_1e
    iget-object v0, p0, Lcom/android/launcher/settings/j;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher/settings/j;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/util/OplusMBAStartActivityHelper;->a(Ljava/lang/String;Ljava/lang/Runnable;Landroid/content/DialogInterface;)V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_12  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
