.class public final synthetic Lcom/android/launcher/settings/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/settings/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/k;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/settings/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/k;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 4

    iget v0, p0, Lcom/android/launcher/settings/k;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_f

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher/settings/k;->b:Ljava/lang/Object;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, p1, p2}, Lcom/android/launcher/settings/LauncherSettingsUtils;->d(Landroid/app/Activity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0

    :goto_f
    iget-object p0, p0, Lcom/android/launcher/settings/k;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleController;->o(Lcom/android/wm/shell/bubbles/BubbleController;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
