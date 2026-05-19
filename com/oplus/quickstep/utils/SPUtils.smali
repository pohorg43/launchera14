.class public final Lcom/oplus/quickstep/utils/SPUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/utils/SPUtils$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/utils/SPUtils$Companion;

.field public static final TAG:Ljava/lang/String; = "SPUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/utils/SPUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/utils/SPUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/utils/SPUtils;->Companion:Lcom/oplus/quickstep/utils/SPUtils$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final saveValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/utils/SPUtils;->Companion:Lcom/oplus/quickstep/utils/SPUtils$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/quickstep/utils/SPUtils$Companion;->saveValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static final saveValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/utils/SPUtils;->Companion:Lcom/oplus/quickstep/utils/SPUtils$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/oplus/quickstep/utils/SPUtils$Companion;->saveValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
