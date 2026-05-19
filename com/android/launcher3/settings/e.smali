.class public final synthetic Lcom/android/launcher3/settings/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/settings/e;->a:Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;

    iput-boolean p2, p0, Lcom/android/launcher3/settings/e;->b:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/settings/e;->a:Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;

    iget-boolean p0, p0, Lcom/android/launcher3/settings/e;->b:Z

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;->b(Lcom/android/launcher3/settings/DeveloperOptionsFragment$PluginPreference;ZLandroid/view/View;)V

    return-void
.end method
