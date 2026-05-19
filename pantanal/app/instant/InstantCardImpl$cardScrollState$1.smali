.class public final Lpantanal/app/instant/InstantCardImpl$cardScrollState$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/instant/internal/InstantCardScrollState$IScrollStateChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/instant/InstantCardImpl;-><init>(Landroid/content/Context;Lpantanal/app/bean/CardViewInfo;Lpantanal/app/bean/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lpantanal/app/instant/InstantCardImpl;


# direct methods
.method public constructor <init>(Lpantanal/app/instant/InstantCardImpl;)V
    .registers 2

    iput-object p1, p0, Lpantanal/app/instant/InstantCardImpl$cardScrollState$1;->this$0:Lpantanal/app/instant/InstantCardImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(I)V
    .registers 13

    iget-object v0, p0, Lpantanal/app/instant/InstantCardImpl$cardScrollState$1;->this$0:Lpantanal/app/instant/InstantCardImpl;

    invoke-static {v0}, Lpantanal/app/instant/InstantCardImpl;->access$getCardEngine$p(Lpantanal/app/instant/InstantCardImpl;)Lpantanal/app/instant/engine/InstantCardEngine;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Lpantanal/app/instant/engine/InstantCardEngine;->setScrollState(I)V

    sget-object p1, Lh4/z;->a:Lh4/z;

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    if-nez p1, :cond_2d

    iget-object p0, p0, Lpantanal/app/instant/InstantCardImpl$cardScrollState$1;->this$0:Lpantanal/app/instant/InstantCardImpl;

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-static {p0}, Lpantanal/app/instant/InstantCardImpl;->access$buildLogPreMsg(Lpantanal/app/instant/InstantCardImpl;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ",cardScrollState: instantAppCard is null, error happened"

    invoke-static {p0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "InstantCard"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_2d
    return-void
.end method
