.class final Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$uiDataCallback$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$uiDataCallback$1;->invoke(Lpantanal/app/nano/UIDataProto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lpantanal/app/bean/PantanalUIData;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $callbackId:Ljava/lang/String;

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
.method public constructor <init>(Lpantanal/app/manager/CardManagerProxy;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpantanal/app/manager/CardManagerProxy;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lpantanal/app/bean/PantanalUIData;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$uiDataCallback$1$1;->this$0:Lpantanal/app/manager/CardManagerProxy;

    iput-object p2, p0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$uiDataCallback$1$1;->$callbackId:Ljava/lang/String;

    iput-object p3, p0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$uiDataCallback$1$1;->$preLogMsg:Ljava/lang/String;

    iput-object p4, p0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$uiDataCallback$1$1;->$cb:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lpantanal/app/bean/PantanalUIData;

    invoke-virtual {p0, p1}, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$uiDataCallback$1$1;->invoke(Lpantanal/app/bean/PantanalUIData;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke(Lpantanal/app/bean/PantanalUIData;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "uiData"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$uiDataCallback$1$1;->this$0:Lpantanal/app/manager/CardManagerProxy;

    invoke-static {v2}, Lpantanal/app/manager/CardManagerProxy;->access$getPantanalUiDataMap$p(Lpantanal/app/manager/CardManagerProxy;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, v0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$uiDataCallback$1$1;->$callbackId:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ly8/c;->a:Ly8/c;

    iget-object v2, v0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$uiDataCallback$1$1;->$preLogMsg:Ljava/lang/String;

    const-string v3, " createUIDataChannel: before changeToMain"

    invoke-static {v2, v3}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "CardServiceProxy"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v15, Lpantanal/app/manager/util/CardScope;->INSTANCE:Lpantanal/app/manager/util/CardScope;

    invoke-static {}, Lpantanal/app/manager/util/DispatchersUtil;->main()Lm7/f0;

    move-result-object v16

    new-instance v2, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$uiDataCallback$1$1$1;

    iget-object v3, v0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$uiDataCallback$1$1;->$cb:Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$uiDataCallback$1$1;->$preLogMsg:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v0, v4}, Lpantanal/app/manager/CardManagerProxy$createUIDataChannel$uiDataCallback$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/PantanalUIData;Ljava/lang/String;Ll4/d;)V

    const/16 v17, 0x0

    const/16 v19, 0x2

    const/16 v20, 0x0

    move-object/from16 v18, v2

    invoke-static/range {v15 .. v20}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method
