.class public final Lpantanal/app/app_card/engine/SmartEngine$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/smartsdk/CardUICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/app_card/engine/SmartEngine;-><init>(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/app_card/OnAppCardLoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lpantanal/app/app_card/engine/SmartEngine;


# direct methods
.method public constructor <init>(Lpantanal/app/app_card/engine/SmartEngine;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/app_card/engine/SmartEngine$1$1;->this$0:Lpantanal/app/app_card/engine/SmartEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCall(Landroid/view/View;ILjava/lang/String;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "cardName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    if-eqz v1, :cond_29

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_29

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v5, :cond_29

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    if-eqz v5, :cond_29

    iget v5, v5, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2a

    :cond_29
    move-object v5, v4

    :goto_2a
    sget-object v6, Ly8/c;->a:Ly8/c;

    iget-object v7, v0, Lpantanal/app/app_card/engine/SmartEngine$1$1;->this$0:Lpantanal/app/app_card/engine/SmartEngine;

    invoke-static {v7}, Lpantanal/app/app_card/engine/SmartEngine;->access$buildPreLogMsg(Lpantanal/app/app_card/engine/SmartEngine;)Ljava/lang/String;

    move-result-object v7

    if-eqz v1, :cond_39

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v8

    goto :goto_3a

    :cond_39
    const/4 v8, 0x0

    :goto_3a
    if-eqz v1, :cond_40

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    :cond_40
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",CardUICallback onCall view "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", code = "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",cardName = "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", viewDpi="

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", viewContext="

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfc

    const/16 v16, 0x0

    const-string v7, "SmartEngine"

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, v0, Lpantanal/app/app_card/engine/SmartEngine$1$1;->this$0:Lpantanal/app/app_card/engine/SmartEngine;

    invoke-virtual {v0, v1, v2}, Lpantanal/app/app_card/engine/SmartEngine;->doLoadEngineView(Landroid/view/View;I)V

    return-void
.end method
