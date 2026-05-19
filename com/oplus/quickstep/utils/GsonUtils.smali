.class public final Lcom/oplus/quickstep/utils/GsonUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/utils/GsonUtils$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/utils/GsonUtils$Companion;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/utils/GsonUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/utils/GsonUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/utils/GsonUtils;->Companion:Lcom/oplus/quickstep/utils/GsonUtils$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final analyzeJsonOfArrayString(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/utils/GsonUtils;->Companion:Lcom/oplus/quickstep/utils/GsonUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/utils/GsonUtils$Companion;->analyzeJsonOfArrayString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
