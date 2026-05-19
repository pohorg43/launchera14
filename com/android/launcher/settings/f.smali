.class public final synthetic Lcom/android/launcher/settings/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/android/launcher/settings/LauncherSettingsFragment;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/settings/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/f;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/settings/f;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/settingsdynamic/SettingsDynamicController;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/settings/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/settings/f;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher/settings/f;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    iget v0, p0, Lcom/android/launcher/settings/f;->a:I

    packed-switch v0, :pswitch_data_20

    goto :goto_13

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher/settings/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-object p0, p0, Lcom/android/launcher/settings/f;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/settings/LauncherSettingsFragment;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher/settings/LauncherSettingsFragment;->k(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/android/launcher/settings/LauncherSettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :goto_13
    iget-object v0, p0, Lcom/android/launcher/settings/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/settingsdynamic/SettingsDynamicController;

    iget-object p0, p0, Lcom/android/launcher/settings/f;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0, p1, p2}, Lcom/oplus/settingsdynamic/SettingsDynamicController;->j(Lcom/oplus/settingsdynamic/SettingsDynamicController;Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
