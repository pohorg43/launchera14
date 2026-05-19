.class public final synthetic Lcom/android/launcher3/pullup/controller/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/pullup/controller/CommonViewController;

.field public final synthetic b:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field public final synthetic c:Landroidx/preference/PreferenceScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/pullup/controller/CommonViewController;Lcom/coui/appcompat/preference/COUISwitchPreference;Landroidx/preference/PreferenceScreen;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/pullup/controller/b;->a:Lcom/android/launcher3/pullup/controller/CommonViewController;

    iput-object p2, p0, Lcom/android/launcher3/pullup/controller/b;->b:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object p3, p0, Lcom/android/launcher3/pullup/controller/b;->c:Landroidx/preference/PreferenceScreen;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/pullup/controller/b;->a:Lcom/android/launcher3/pullup/controller/CommonViewController;

    iget-object v1, p0, Lcom/android/launcher3/pullup/controller/b;->b:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-object p0, p0, Lcom/android/launcher3/pullup/controller/b;->c:Landroidx/preference/PreferenceScreen;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/launcher3/pullup/controller/CommonViewController;->a(Lcom/android/launcher3/pullup/controller/CommonViewController;Lcom/coui/appcompat/preference/COUISwitchPreference;Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
