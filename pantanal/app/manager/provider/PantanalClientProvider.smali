.class public abstract Lpantanal/app/manager/provider/PantanalClientProvider;
.super Lcom/oplus/channel/server/provider/ChannelServerProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/manager/provider/PantanalClientProvider$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/manager/provider/PantanalClientProvider$Companion;

.field public static final TAG:Ljava/lang/String; = "CardServerProvider"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/manager/provider/PantanalClientProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/manager/provider/PantanalClientProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/manager/provider/PantanalClientProvider;->Companion:Lpantanal/app/manager/provider/PantanalClientProvider$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/channel/server/provider/ChannelServerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "authority"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "method"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ly8/c;->a:Ly8/c;

    const-string v2, "call provider:"

    const-string v4, ", method = "

    const-string v5, ", args = "

    invoke-static {v2, v0, v4, v1, v5}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v14, p3

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",extraBundle = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p4

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v4, "CardServerProvider"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-super/range {p0 .. p4}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lpantanal/app/manager/provider/PantanalClientProvider;->providerAuthority()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract providerAuthority()Ljava/lang/String;
.end method
