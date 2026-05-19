.class public final Lb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/pantanal/log/common/ILog;


# instance fields
.field public a:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/oplus/pantanal/log/printer/IPrinter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lb;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V
    .registers 22

    move-object v0, p0

    iget-object v0, v0, Lb;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/oplus/pantanal/log/printer/IPrinter;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Lcom/oplus/pantanal/log/printer/IPrinter;->println(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V

    goto :goto_7

    :cond_27
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V
    .registers 25

    const-string/jumbo v1, "tag"

    const-string/jumbo v3, "msg"

    const-string/jumbo v5, "sensitiveMsg"

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    invoke-static/range {v0 .. v5}, La;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x3

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move-object/from16 v15, p8

    invoke-virtual/range {v6 .. v15}, Lb;->a(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V
    .registers 25

    const-string/jumbo v1, "tag"

    const-string/jumbo v3, "msg"

    const-string/jumbo v5, "sensitiveMsg"

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    invoke-static/range {v0 .. v5}, La;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x6

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move-object/from16 v15, p8

    invoke-virtual/range {v6 .. v15}, Lb;->a(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V
    .registers 25

    const-string/jumbo v1, "tag"

    const-string/jumbo v3, "msg"

    const-string/jumbo v5, "sensitiveMsg"

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    invoke-static/range {v0 .. v5}, La;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x4

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move-object/from16 v15, p8

    invoke-virtual/range {v6 .. v15}, Lb;->a(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V

    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V
    .registers 25

    const-string/jumbo v1, "tag"

    const-string/jumbo v3, "msg"

    const-string/jumbo v5, "sensitiveMsg"

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    invoke-static/range {v0 .. v5}, La;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x2

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move-object/from16 v15, p8

    invoke-virtual/range {v6 .. v15}, Lb;->a(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V

    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V
    .registers 25

    const-string/jumbo v1, "tag"

    const-string/jumbo v3, "msg"

    const-string/jumbo v5, "sensitiveMsg"

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    invoke-static/range {v0 .. v5}, La;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x5

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move-object/from16 v15, p8

    invoke-virtual/range {v6 .. v15}, Lb;->a(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V

    return-void
.end method
