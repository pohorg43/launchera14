.class public final Lpantanal/app/bean/CardCreateType$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/bean/CardCreateType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lpantanal/app/bean/CardCreateType$Companion;

.field private static final DES_CARD_CREATE_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECOMMEND:I = 0x2

.field public static final SUBSCRIBE:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    new-instance v0, Lpantanal/app/bean/CardCreateType$Companion;

    invoke-direct {v0}, Lpantanal/app/bean/CardCreateType$Companion;-><init>()V

    sput-object v0, Lpantanal/app/bean/CardCreateType$Companion;->$$INSTANCE:Lpantanal/app/bean/CardCreateType$Companion;

    const/4 v0, 0x2

    new-array v1, v0, [Lh4/j;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    const-string v5, "subscribe"

    invoke-direct {v4, v3, v5}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v4, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Lh4/j;

    const-string v4, "recommend"

    invoke-direct {v3, v0, v4}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    invoke-static {v1}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lpantanal/app/bean/CardCreateType$Companion;->DES_CARD_CREATE_TYPE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDES_CARD_CREATE_TYPE$pantanal_interface_release()Ljava/util/Map;
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

    sget-object p0, Lpantanal/app/bean/CardCreateType$Companion;->DES_CARD_CREATE_TYPE:Ljava/util/Map;

    return-object p0
.end method
