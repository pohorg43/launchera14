.class public final Lcom/pantanal/server/content/utils/Constants$ChannelType$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantanal/server/content/utils/Constants$ChannelType;
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0087\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\f\u0010\rR\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R%\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00070\u00068\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u000e"
    }
    d2 = {
        "Lcom/pantanal/server/content/utils/Constants$ChannelType$Companion;",
        "",
        "",
        "OLD_CHANNEL",
        "I",
        "NEW_CHANNEL",
        "",
        "",
        "DES_CHANNEL_TYPE",
        "Ljava/util/Map;",
        "getDES_CHANNEL_TYPE",
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
.field public static final synthetic $$INSTANCE:Lcom/pantanal/server/content/utils/Constants$ChannelType$Companion;

.field private static final DES_CHANNEL_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NEW_CHANNEL:I = 0x2

.field public static final OLD_CHANNEL:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/pantanal/server/content/utils/Constants$ChannelType$Companion;

    invoke-direct {v0}, Lcom/pantanal/server/content/utils/Constants$ChannelType$Companion;-><init>()V

    sput-object v0, Lcom/pantanal/server/content/utils/Constants$ChannelType$Companion;->$$INSTANCE:Lcom/pantanal/server/content/utils/Constants$ChannelType$Companion;

    const/4 v0, 0x2

    new-array v1, v0, [Lh4/j;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lh4/j;

    const-string v5, "old_channel"

    invoke-direct {v4, v3, v5}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v4, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Lh4/j;

    const-string v4, "new_channel"

    invoke-direct {v3, v0, v4}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    invoke-static {v1}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/pantanal/server/content/utils/Constants$ChannelType$Companion;->DES_CHANNEL_TYPE:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDES_CHANNEL_TYPE()Ljava/util/Map;
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

    sget-object p0, Lcom/pantanal/server/content/utils/Constants$ChannelType$Companion;->DES_CHANNEL_TYPE:Ljava/util/Map;

    return-object p0
.end method
