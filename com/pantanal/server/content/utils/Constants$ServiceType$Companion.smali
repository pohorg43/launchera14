.class public final Lcom/pantanal/server/content/utils/Constants$ServiceType$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantanal/server/content/utils/Constants$ServiceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0087\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0016\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0016\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0016\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R%\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\n8\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0012"
    }
    d2 = {
        "Lcom/pantanal/server/content/utils/Constants$ServiceType$Companion;",
        "",
        "",
        "INSTANT",
        "I",
        "APP",
        "CONTENT_OPERATION",
        "SERVICE",
        "OPERATION_WIDGET",
        "SEEDLING",
        "",
        "",
        "DES_SERVICE_TYPE",
        "Ljava/util/Map;",
        "getDES_SERVICE_TYPE",
        "()Ljava/util/Map;",
        "<init>",
        "()V",
        "staticmanagersdk_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/pantanal/server/content/utils/Constants$ServiceType$Companion;

.field public static final APP:I = 0x2

.field public static final CONTENT_OPERATION:I = 0x3

.field private static final DES_SERVICE_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANT:I = 0x1

.field public static final OPERATION_WIDGET:I = 0x5

.field public static final SEEDLING:I = 0x64

.field public static final SERVICE:I = 0x4


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/pantanal/server/content/utils/Constants$ServiceType$Companion;

    invoke-direct {v0}, Lcom/pantanal/server/content/utils/Constants$ServiceType$Companion;-><init>()V

    sput-object v0, Lcom/pantanal/server/content/utils/Constants$ServiceType$Companion;->$$INSTANCE:Lcom/pantanal/server/content/utils/Constants$ServiceType$Companion;

    const/4 v0, 0x6

    new-array v0, v0, [Lh4/j;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lh4/j;

    const-string v4, "instant"

    invoke-direct {v3, v2, v4}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v3, v0, v2

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    const-string v5, "assistant"

    invoke-direct {v4, v3, v5}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    const-string v5, "content_operation"

    invoke-direct {v4, v3, v5}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v2

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    const-string v5, "service"

    invoke-direct {v4, v3, v5}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    const-string v5, "widget"

    invoke-direct {v4, v3, v5}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v2

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lh4/j;

    const-string v4, "seedling"

    invoke-direct {v3, v2, v4}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    invoke-static {v0}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/pantanal/server/content/utils/Constants$ServiceType$Companion;->DES_SERVICE_TYPE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDES_SERVICE_TYPE()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/pantanal/server/content/utils/Constants$ServiceType$Companion;->DES_SERVICE_TYPE:Ljava/util/Map;

    return-object p0
.end method
