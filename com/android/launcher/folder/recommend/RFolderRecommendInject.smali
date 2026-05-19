.class public final Lcom/android/launcher/folder/recommend/RFolderRecommendInject;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final FOLDER_CONTENT_RECOMMEND_ENABLE:Ljava/lang/String; = "folder_content_recommend_enable"

.field public static final INSTANCE:Lcom/android/launcher/folder/recommend/RFolderRecommendInject;

.field public static final TAG:Ljava/lang/String; = "RFolderRecommend"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/folder/recommend/RFolderRecommendInject;

    invoke-direct {v0}, Lcom/android/launcher/folder/recommend/RFolderRecommendInject;-><init>()V

    sput-object v0, Lcom/android/launcher/folder/recommend/RFolderRecommendInject;->INSTANCE:Lcom/android/launcher/folder/recommend/RFolderRecommendInject;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final init(Landroid/content/Context;)V
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->INSTANCE:Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;

    new-instance v0, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;

    invoke-direct {v0, p1}, Lcom/android/launcher/folder/recommend/RFolderRecommendImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher/folder/recommend/RFolderRecommendHelper;->setMRecommendItf(Lcom/android/launcher/folder/recommend/RRecommendItf;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    const-string v0, "folder_content_recommend_enable"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "0"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2f

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result p0

    if-eqz p0, :cond_2f

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/common/config/FeatureOption;->setSIsSupportFolderContentRecommend(Z)V

    :cond_2f
    return-void
.end method
