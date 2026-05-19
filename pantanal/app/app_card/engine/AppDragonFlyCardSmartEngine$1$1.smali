.class public final Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/smartsdk/CardUICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;-><init>(Lpantanal/app/bean/CardViewInfo;Lpantanal/app/app_card/OnAppCardLoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;


# direct methods
.method public constructor <init>(Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine$1$1;->this$0:Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCall(Landroid/view/View;ILjava/lang/String;)V
    .registers 20

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "cardName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz v0, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_27

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v4, :cond_27

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    if-eqz v4, :cond_27

    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_28

    :cond_27
    move-object v4, v3

    :goto_28
    sget-object v5, Ly8/c;->a:Ly8/c;

    if-eqz v0, :cond_31

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_32

    :cond_31
    const/4 v6, 0x0

    :goto_32
    if-eqz v0, :cond_38

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    :cond_38
    const-string v7, "onCall view "

    const-string v8, ", code = "

    const-string v9, ", cardName = "

    invoke-static {v7, v6, v8, v1, v9}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", viewDpi="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", viewContext="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xfc

    const/4 v15, 0x0

    const-string v6, "AppDragonFlyCardSmartEngine"

    invoke-static/range {v5 .. v15}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    move-object/from16 v2, p0

    iget-object v2, v2, Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine$1$1;->this$0:Lpantanal/app/app_card/engine/AppDragonFlyCardSmartEngine;

    invoke-virtual {v2, v0, v1}, Lpantanal/app/app_card/engine/SmartEngine;->doLoadEngineView(Landroid/view/View;I)V

    return-void
.end method
