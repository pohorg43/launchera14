.class Lcom/android/launcher/badge/BadgeDataProviderCompatVP$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->updateNumberSupportListIfNecessary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/badge/BadgeDataProviderCompatVP;


# direct methods
.method public constructor <init>(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$3;->this$0:Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-string v0, "BadgeDataProviderCompatVP"

    const-string/jumbo v1, "update Number Support List If Necessary!"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$3;->this$0:Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

    invoke-virtual {v0}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->initBadgeNumTypeSupportAppList()V

    iget-object p0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$3;->this$0:Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

    invoke-virtual {p0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->refreshAllBadgeInfos()V

    return-void
.end method
