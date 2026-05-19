.class public final Lw8/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Ljava/lang/Boolean;


# direct methods
.method public static final a(Landroid/content/Context;)Z
    .registers 26
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lw8/b;->a:Ljava/lang/Boolean;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_15
    sget v3, Lcom/oplus/os/OplusBuild$VERSION;->SDK_VERSION:I

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_1d

    move v3, v1

    goto :goto_1e

    :cond_1d
    move v3, v2

    :goto_1e
    if-nez v3, :cond_33

    sget-object v4, Ly8/c;->a:Ly8/c;

    const-string v5, "PantanalUtils"

    const-string v6, "below OS14, card service not running in UMS"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_70

    :cond_33
    const-string v3, "com.oplus.pantanal.ums"

    const-string v4, "isCardServiceSupport"

    invoke-static {v0, v3, v4, v2}, Ly8/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_50

    sget-object v3, Ly8/c;->a:Ly8/c;

    const-string v4, "PantanalUtils"

    const-string v5, "UMS not support card service"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_70

    :cond_50
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_52
    .catchall {:try_start_15 .. :try_end_52} :catchall_53

    goto :goto_58

    :catchall_53
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_58
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_72

    sget-object v3, Ly8/c;->a:Ly8/c;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "PantanalUtils"

    const-string v5, "onFailure below OS14, card service not running in UMS"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_70
    move v1, v2

    goto :goto_8b

    :cond_72
    sget-object v14, Ly8/c;->a:Ly8/c;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0xfc

    const/16 v24, 0x0

    const-string v15, "PantanalUtils"

    const-string v16, "UMS support card service"

    invoke-static/range {v14 .. v24}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_8b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lw8/b;->a:Ljava/lang/Boolean;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
