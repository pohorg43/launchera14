.class public final Lcom/android/launcher/custom/OplusToolUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher/custom/OplusToolUtils;

.field public static final SPEED_DIAL_WIDGET_CLASS:Ljava/lang/String; = "com.android.contacts.speeddialwidget.SpeedDialWidgetProvider"

.field public static final SPEED_DIAL_WIDGET_CLASS_NEW:Ljava/lang/String; = "com.android.contacts.speeddialwidget.SpeedDialWidget"

.field public static final SPEED_DIAL_WIDGET_TITLE_CLASS:Ljava/lang/String; = "com.android.contacts.speeddialwidget.SpeedDialWidgetProviderTitle"

.field public static final SPEED_DIAL_WIDGET_TITLE_CLASS_NEW:Ljava/lang/String; = "com.android.contacts.speeddialwidget.SpeedDialWidgetTitle"

.field private static mIsLoadIsSpeedDialWidget:Z

.field private static mIsSpeedDialWidgetInstalled:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/custom/OplusToolUtils;

    invoke-direct {v0}, Lcom/android/launcher/custom/OplusToolUtils;-><init>()V

    sput-object v0, Lcom/android/launcher/custom/OplusToolUtils;->INSTANCE:Lcom/android/launcher/custom/OplusToolUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isSpeedDialWidgetInstalled(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/launcher/custom/OplusToolUtils;->mIsLoadIsSpeedDialWidget:Z

    if-eqz v0, :cond_10

    sget-boolean p0, Lcom/android/launcher/custom/OplusToolUtils;->mIsSpeedDialWidgetInstalled:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_10
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher/custom/OplusToolUtils;->mIsLoadIsSpeedDialWidget:Z

    new-instance v1, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getAllProviders(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.contacts.speeddialwidget.SpeedDialWidgetProvider"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    const-string v2, "com.android.contacts.speeddialwidget.SpeedDialWidget"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    const-string v2, "com.android.contacts.speeddialwidget.SpeedDialWidgetProviderTitle"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_53

    const-string v2, "com.android.contacts.speeddialwidget.SpeedDialWidgetTitle"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    :cond_53
    sput-boolean v0, Lcom/android/launcher/custom/OplusToolUtils;->mIsSpeedDialWidgetInstalled:Z

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_58
    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/launcher/custom/OplusToolUtils;->mIsSpeedDialWidgetInstalled:Z

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method
