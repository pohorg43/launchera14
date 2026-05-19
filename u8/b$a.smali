.class public final Lu8/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/groupcard/ICardCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/b;->e(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lu8/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lu8/b;)V
    .registers 3

    iput-object p1, p0, Lu8/b$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lu8/b$a;->b:Lu8/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCard(Landroid/content/Context;Lpantanal/app/bean/CardViewInfo;Landroid/os/Bundle;)Lpantanal/app/Card;
    .registers 16

    const-string v0, "contextFromPlugin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardViewInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly8/c;->a:Ly8/c;

    iget-object v1, p0, Lu8/b$a;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCard,context:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "PantanalClient"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCard,contextFromPlugin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "PantanalClient"

    move-object v1, v0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p1, p0, Lu8/b$a;->b:Lu8/b;

    iget-object p0, p0, Lu8/b$a;->a:Landroid/content/Context;

    invoke-virtual {p1, p0, p2, p3}, Lu8/b;->a(Landroid/content/Context;Lpantanal/app/bean/CardViewInfo;Landroid/os/Bundle;)Lpantanal/app/Card;

    move-result-object p0

    return-object p0
.end method

.method public notifyInterruptLoadingCard(Z)V
    .registers 2

    sget-object p0, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->notifyInterruptLoadingCard(Z)V

    return-void
.end method
