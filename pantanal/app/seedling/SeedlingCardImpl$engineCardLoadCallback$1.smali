.class public final Lpantanal/app/seedling/SeedlingCardImpl$engineCardLoadCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/seedling/OnSeedlingCardLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/seedling/SeedlingCardImpl;-><init>(Lpantanal/app/manager/ServiceManagerProxy;Landroid/content/Context;Lpantanal/app/bean/CardViewInfo;Lpantanal/app/bean/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSeedlingCardImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SeedlingCardImpl.kt\npantanal/app/seedling/SeedlingCardImpl$engineCardLoadCallback$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1101:1\n1#2:1102\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lpantanal/app/seedling/SeedlingCardImpl;


# direct methods
.method public constructor <init>(Lpantanal/app/seedling/SeedlingCardImpl;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/seedling/SeedlingCardImpl$engineCardLoadCallback$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 15

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl$engineCardLoadCallback$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v0}, Lpantanal/app/seedling/SeedlingCardImpl;->access$buildPreLogMsg(Lpantanal/app/seedling/SeedlingCardImpl;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lpantanal/app/seedling/SeedlingCardImpl$engineCardLoadCallback$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v2}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getCardTag$p(Lpantanal/app/seedling/SeedlingCardImpl;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " engineCardLoadCallback error: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", code: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", msg: "

    invoke-static {v3, v0, p2}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "SeedlingCard"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl$engineCardLoadCallback$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v0}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getContext$p(Lpantanal/app/seedling/SeedlingCardImpl;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_54

    iget-object v1, p0, Lpantanal/app/seedling/SeedlingCardImpl$engineCardLoadCallback$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v1}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getCardViewInfo$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/bean/CardViewInfo;

    move-result-object v1

    invoke-static {v1}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lz8/c;->y(Landroid/content/Context;Ljava/lang/String;)V

    :cond_54
    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl$engineCardLoadCallback$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lpantanal/app/seedling/SeedlingCardImpl;->access$setLastEngineView$p(Lpantanal/app/seedling/SeedlingCardImpl;Landroid/view/View;)V

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl$engineCardLoadCallback$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getClientCallback$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/OnLoadCallback;

    move-result-object p0

    if-eqz p0, :cond_65

    invoke-interface {p0, p1, p2}, Lpantanal/app/OnLoadCallback;->onError(ILjava/lang/String;)V

    :cond_65
    return-void
.end method

.method public onPartSuccess(Landroid/view/View;I)V
    .registers 15

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly8/c;->a:Ly8/c;

    iget-object v1, p0, Lpantanal/app/seedling/SeedlingCardImpl$engineCardLoadCallback$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v1}, Lpantanal/app/seedling/SeedlingCardImpl;->access$buildPreLogMsg(Lpantanal/app/seedling/SeedlingCardImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " engineCardLoadCallback onPartSuccess,code: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", view:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "SeedlingCard"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/16 v1, 0x7d8

    if-eq p2, v1, :cond_6e

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl$engineCardLoadCallback$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->access$buildPreLogMsg(Lpantanal/app/seedling/SeedlingCardImpl;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " engineCardLoadCallback,onPartSuccess code not match,code = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",view = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "SeedlingCard"

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void

    :cond_6e
    iget-object v1, p0, Lpantanal/app/seedling/SeedlingCardImpl$engineCardLoadCallback$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v1, p1}, Lpantanal/app/seedling/SeedlingCardImpl;->access$setLastEngineView$p(Lpantanal/app/seedling/SeedlingCardImpl;Landroid/view/View;)V

    iget-object p1, p0, Lpantanal/app/seedling/SeedlingCardImpl$engineCardLoadCallback$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {p1}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getClientCallback$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/OnLoadCallback;

    move-result-object p1

    if-eqz p1, :cond_83

    const-string v1, "seedling card load onPartSuccess,u can still get view."

    invoke-interface {p1, p2, v1}, Lpantanal/app/OnLoadCallback;->onError(ILjava/lang/String;)V

    sget-object p1, Lh4/z;->a:Lh4/z;

    goto :goto_84

    :cond_83
    const/4 p1, 0x0

    :goto_84
    if-nez p1, :cond_a1

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl$engineCardLoadCallback$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->access$buildPreLogMsg(Lpantanal/app/seedling/SeedlingCardImpl;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " engineCardLoadCallback,onPartSuccess clientCallBack is null."

    invoke-static {p0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "SeedlingCard"

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_a1
    return-void
.end method

.method public onPreview(Landroid/view/View;)V
    .registers 14

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl$engineCardLoadCallback$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->access$buildPreLogMsg(Lpantanal/app/seedling/SeedlingCardImpl;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " engineCardLoadCallback: onSuccess"

    invoke-static {p0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "SeedlingCard"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Landroid/view/View;)V
    .registers 14

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl$engineCardLoadCallback$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v0}, Lpantanal/app/seedling/SeedlingCardImpl;->access$buildPreLogMsg(Lpantanal/app/seedling/SeedlingCardImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v2, " engineCardLoadCallback: onSuccess"

    invoke-static {v0, v2}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "SeedlingCard"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl$engineCardLoadCallback$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v0, p1}, Lpantanal/app/seedling/SeedlingCardImpl;->access$setLastEngineView$p(Lpantanal/app/seedling/SeedlingCardImpl;Landroid/view/View;)V

    iget-object v0, p0, Lpantanal/app/seedling/SeedlingCardImpl$engineCardLoadCallback$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {v0}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getCardViewInfo$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/bean/CardViewInfo;

    move-result-object v0

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    invoke-virtual {v0}, Lz8/c;->u()V

    iget-object p0, p0, Lpantanal/app/seedling/SeedlingCardImpl$engineCardLoadCallback$1;->this$0:Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {p0}, Lpantanal/app/seedling/SeedlingCardImpl;->access$getClientCallback$p(Lpantanal/app/seedling/SeedlingCardImpl;)Lpantanal/app/OnLoadCallback;

    move-result-object p0

    if-eqz p0, :cond_3e

    invoke-interface {p0, p1}, Lpantanal/app/OnLoadCallback;->onSuccess(Landroid/view/View;)V

    :cond_3e
    return-void
.end method
