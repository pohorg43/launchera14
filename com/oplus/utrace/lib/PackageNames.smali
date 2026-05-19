.class public final Lcom/oplus/utrace/lib/PackageNames;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ASSISTANT_SCREEN:Ljava/lang/String; = "com.coloros.assistantscreen"

.field private static final CORE_APPS:[Ljava/lang/String;

.field public static final INSTANCE:Lcom/oplus/utrace/lib/PackageNames;

.field public static final LAUNCHER:Ljava/lang/String; = "com.android.launcher"

.field public static final METIS:Ljava/lang/String; = "com.oplus.metis"

.field public static final SCENE_SERVICE:Ljava/lang/String; = "com.coloros.sceneservice"

.field public static final SECONDARY_HOME:Ljava/lang/String; = "com.oplus.secondaryhome"

.field public static final SYSTEM_UI:Ljava/lang/String; = "com.android.systemui"

.field public static final UMS:Ljava/lang/String; = "com.oplus.pantanal.ums"

.field public static final UTRACE_APP:Ljava/lang/String; = "com.oplus.utrace"

.field private static final UTRACE_DEMO_APPS:[Ljava/lang/String;

.field public static final UTRACE_MGR:Ljava/lang/String; = "com.oplus.utrace.agent"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/utrace/lib/PackageNames;

    invoke-direct {v0}, Lcom/oplus/utrace/lib/PackageNames;-><init>()V

    sput-object v0, Lcom/oplus/utrace/lib/PackageNames;->INSTANCE:Lcom/oplus/utrace/lib/PackageNames;

    const-string v0, "com.oplus.utrace.agent"

    const-string v1, "com.oplus.pantanal.ums"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/oplus/utrace/lib/PackageNames;->CORE_APPS:[Ljava/lang/String;

    const-string v1, "com.oplus.utrace"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/utrace/lib/PackageNames;->UTRACE_DEMO_APPS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCORE_APPS()[Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/oplus/utrace/lib/PackageNames;->CORE_APPS:[Ljava/lang/String;

    return-object p0
.end method

.method public final getUTRACE_DEMO_APPS()[Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/oplus/utrace/lib/PackageNames;->UTRACE_DEMO_APPS:[Ljava/lang/String;

    return-object p0
.end method
