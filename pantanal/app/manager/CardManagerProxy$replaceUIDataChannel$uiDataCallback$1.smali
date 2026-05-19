.class final Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$uiDataCallback$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/manager/CardManagerProxy;->replaceUIDataChannel(Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/CardViewInfo;Lorg/json/JSONObject;Lpantanal/app/manager/ServiceManagerProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lpantanal/app/nano/UIDataProto;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $cardViewInfo:Lpantanal/app/bean/CardViewInfo;

.field public final synthetic $cb:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lpantanal/app/bean/PantanalUIData;",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $preLogMsg:Ljava/lang/String;

.field public final synthetic this$0:Lpantanal/app/manager/CardManagerProxy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;Lpantanal/app/manager/CardManagerProxy;Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lpantanal/app/bean/CardViewInfo;",
            "Lpantanal/app/manager/CardManagerProxy;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lpantanal/app/bean/PantanalUIData;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$uiDataCallback$1;->$preLogMsg:Ljava/lang/String;

    iput-object p2, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$uiDataCallback$1;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iput-object p3, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$uiDataCallback$1;->this$0:Lpantanal/app/manager/CardManagerProxy;

    iput-object p4, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$uiDataCallback$1;->$cb:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lpantanal/app/nano/UIDataProto;

    invoke-virtual {p0, p1}, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$uiDataCallback$1;->invoke(Lpantanal/app/nano/UIDataProto;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke(Lpantanal/app/nano/UIDataProto;)V
    .registers 14

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    iget-object v0, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$uiDataCallback$1;->$preLogMsg:Ljava/lang/String;

    const-string v2, "replaceUIDataChannel: received data"

    invoke-static {v0, v2}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "CardServiceProxy"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$uiDataCallback$1;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v0}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v0

    iget-object v1, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$uiDataCallback$1;->$cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v1}, Lpantanal/app/bean/CardViewInfo;->getType()I

    move-result v1

    iget-object v2, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$uiDataCallback$1;->this$0:Lpantanal/app/manager/CardManagerProxy;

    invoke-static {v2}, Lpantanal/app/manager/CardManagerProxy;->access$getServiceManagerProxy$p(Lpantanal/app/manager/CardManagerProxy;)Lpantanal/app/manager/ServiceManagerProxy;

    move-result-object v2

    invoke-virtual {v2}, Lpantanal/app/manager/ServiceManagerProxy;->getConfiguration()Lpantanal/app/bean/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lpantanal/app/bean/Configuration;->getShouldParseSeedlingUIData()Z

    move-result v2

    new-instance v3, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$uiDataCallback$1$1;

    iget-object v4, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$uiDataCallback$1;->$preLogMsg:Ljava/lang/String;

    iget-object p0, p0, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$uiDataCallback$1;->$cb:Lkotlin/jvm/functions/Function1;

    invoke-direct {v3, v4, p0}, Lpantanal/app/manager/CardManagerProxy$replaceUIDataChannel$uiDataCallback$1$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-static {p1, v0, v1, v2, v3}, Lpantanal/app/manager/util/ProtoDataUtilKt;->toUiData(Lpantanal/app/nano/UIDataProto;Lpantanal/app/bean/Entrance;IZLkotlin/jvm/functions/Function1;)V

    return-void
.end method
