.class public final Lcom/android/common/rus/ExtraAppCategoryManager;
.super Lcom/android/rusconfig/RusBaseTxtConfigManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/rus/ExtraAppCategoryManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/common/rus/ExtraAppCategoryManager$Companion;

.field private static final VERSION_EXTRA_APP_CATEGORY:Ljava/lang/String; = "extra_app_category_version"

.field private static final sInstance$delegate:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Lcom/android/common/rus/ExtraAppCategoryManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/rus/ExtraAppCategoryManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/rus/ExtraAppCategoryManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/common/rus/ExtraAppCategoryManager;->Companion:Lcom/android/common/rus/ExtraAppCategoryManager$Companion;

    sget-object v0, Lcom/android/common/rus/ExtraAppCategoryManager$Companion$sInstance$2;->INSTANCE:Lcom/android/common/rus/ExtraAppCategoryManager$Companion$sInstance$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/common/rus/ExtraAppCategoryManager;->sInstance$delegate:Lh4/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/rusconfig/RusBaseTxtConfigManager;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSInstance$delegate$cp()Lh4/f;
    .registers 1

    sget-object v0, Lcom/android/common/rus/ExtraAppCategoryManager;->sInstance$delegate:Lh4/f;

    return-object v0
.end method

.method public static final getInstance()Lcom/android/common/rus/ExtraAppCategoryManager;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/rus/ExtraAppCategoryManager;->Companion:Lcom/android/common/rus/ExtraAppCategoryManager$Companion;

    invoke-virtual {v0}, Lcom/android/common/rus/ExtraAppCategoryManager$Companion;->getInstance()Lcom/android/common/rus/ExtraAppCategoryManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLocalFileConfigName()Ljava/lang/String;
    .registers 1

    const-string p0, "extra_app_category"

    return-object p0
.end method

.method public getLocalSpVersionKey()Ljava/lang/String;
    .registers 1

    const-string p0, "extra_app_category_version"

    return-object p0
.end method

.method public getRusRomConfigName()Ljava/lang/String;
    .registers 1

    const-string p0, "extra_app_category"

    return-object p0
.end method

.method public supportRus()Z
    .registers 1

    sget-boolean p0, Lcom/android/common/config/FeatureOption;->isAutonameFolderDisabled:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
