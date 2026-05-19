.class public final synthetic Lcom/android/launcher/settings/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/preference/COUIRecommendedPreference$OnRecommendedClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher/settings/LauncherSettingsFragment;

.field public final synthetic c:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;I)V
    .registers 4

    iput p3, p0, Lcom/android/launcher/settings/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/h;->b:Lcom/android/launcher/settings/LauncherSettingsFragment;

    iput-object p2, p0, Lcom/android/launcher/settings/h;->c:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/settings/h;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher/settings/h;->b:Lcom/android/launcher/settings/LauncherSettingsFragment;

    iget-object p0, p0, Lcom/android/launcher/settings/h;->c:Landroid/content/Intent;

    invoke-static {v0, p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->d(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;Landroid/view/View;)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/launcher/settings/h;->b:Lcom/android/launcher/settings/LauncherSettingsFragment;

    iget-object p0, p0, Lcom/android/launcher/settings/h;->c:Landroid/content/Intent;

    invoke-static {v0, p0, p1}, Lcom/android/launcher/settings/LauncherSettingsFragment;->n(Lcom/android/launcher/settings/LauncherSettingsFragment;Landroid/content/Intent;Landroid/view/View;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
