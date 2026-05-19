.class public final Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/seedling/sdk/callback/InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/seedling/sdk/SeedlingSdk;->buildInitCallbackWrapper(Lcom/oplus/seedling/sdk/callback/InitCallback;)Lcom/oplus/seedling/sdk/callback/InitCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $entranceCallBack:Lcom/oplus/seedling/sdk/callback/InitCallback;


# direct methods
.method public constructor <init>(Lcom/oplus/seedling/sdk/callback/InitCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1;->$entranceCallBack:Lcom/oplus/seedling/sdk/callback/InitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .registers 10

    const-string v0, "errorMsg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lm7/y0;->a:Lm7/y0;

    sget-object v0, Lr7/v;->a:Lm7/b2;

    invoke-static {v0}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v1

    new-instance v4, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onFailed$1;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1;->$entranceCallBack:Lcom/oplus/seedling/sdk/callback/InitCallback;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p2, p0, v0}, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onFailed$1;-><init>(ILjava/lang/String;Lcom/oplus/seedling/sdk/callback/InitCallback;Ll4/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

.method public onPluginCheckUpdateResult(IIIJ)V
    .registers 22

    sget-object v0, Ly8/c;->a:Ly8/c;

    sget-object v1, Lcom/oplus/seedling/sdk/SeedlingSdk;->INSTANCE:Lcom/oplus/seedling/sdk/SeedlingSdk;

    invoke-virtual {v1}, Lcom/oplus/seedling/sdk/SeedlingSdk;->getEntrancePkgName$pantanal_client_release()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onPluginCheckUpdateResult. pkgName:"

    invoke-static {v2, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "SeedlingSdkInterface"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v8, v15

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lm7/y0;->a:Lm7/y0;

    sget-object v0, Lr7/v;->a:Lm7/b2;

    invoke-static {v0}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v0

    new-instance v1, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onPluginCheckUpdateResult$1;

    move-object/from16 v2, p0

    iget-object v9, v2, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1;->$entranceCallBack:Lcom/oplus/seedling/sdk/callback/InitCallback;

    move-object v8, v1

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-wide/from16 v13, p4

    invoke-direct/range {v8 .. v15}, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onPluginCheckUpdateResult$1;-><init>(Lcom/oplus/seedling/sdk/callback/InitCallback;IIIJLl4/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 p0, v0

    move-object/from16 p1, v2

    move/from16 p2, v3

    move-object/from16 p3, v1

    move/from16 p4, v4

    move-object/from16 p5, v5

    invoke-static/range {p0 .. p5}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

.method public onSuccess()V
    .registers 8

    sget-object v0, Lm7/y0;->a:Lm7/y0;

    sget-object v0, Lr7/v;->a:Lm7/b2;

    invoke-static {v0}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v1

    new-instance v4, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onSuccess$1;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1;->$entranceCallBack:Lcom/oplus/seedling/sdk/callback/InitCallback;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/oplus/seedling/sdk/SeedlingSdk$buildInitCallbackWrapper$1$onSuccess$1;-><init>(Lcom/oplus/seedling/sdk/callback/InitCallback;Ll4/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method
