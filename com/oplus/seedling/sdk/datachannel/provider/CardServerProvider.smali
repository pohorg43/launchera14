.class public abstract Lcom/oplus/seedling/sdk/datachannel/provider/CardServerProvider;
.super Lcom/oplus/channel/server/provider/ChannelServerProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/datachannel/provider/CardServerProvider$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/seedling/sdk/datachannel/provider/CardServerProvider$Companion;

.field public static final TAG:Ljava/lang/String; = "CardServerProvider"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/seedling/sdk/datachannel/provider/CardServerProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/seedling/sdk/datachannel/provider/CardServerProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/seedling/sdk/datachannel/provider/CardServerProvider;->Companion:Lcom/oplus/seedling/sdk/datachannel/provider/CardServerProvider$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/channel/server/provider/ChannelServerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    const-string v0, "authority"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
