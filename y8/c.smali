.class public final Ly8/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/pantanal/log/common/ILog;


# static fields
.field public static final a:Ly8/c;

.field public static b:Lb; = null

.field public static c:Lcom/oplus/pantanal/log/printer/IPrinter; = null

.field public static d:Ljava/lang/String; = null

.field public static e:Ljava/lang/String; = null

.field public static f:Ly8/a; = null

.field public static g:Ljava/lang/String; = null

.field public static h:Ljava/lang/String; = null

.field public static i:Ljava/lang/String; = null

.field public static j:Ljava/lang/String; = ""


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Ly8/c;

    invoke-direct {v0}, Ly8/c;-><init>()V

    sput-object v0, Ly8/c;->a:Ly8/c;

    new-instance v0, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;

    invoke-direct {v0}, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logFloorLevel(I)Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logMsgSuffix(Ljava/lang/String;)Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;

    move-result-object v0

    const-string v2, "PantaCard"

    invoke-virtual {v0, v2}, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logTagPrefix(Ljava/lang/String;)Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;

    move-result-object v0

    const-string v2, "PantaLog"

    invoke-virtual {v0, v2}, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->logClassName(Ljava/lang/String;)Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->printFileNameAndLineNumber(Z)Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/pantanal/log/printer/PrinterConfig$Builder;->build()Lcom/oplus/pantanal/log/printer/PrinterConfig;

    move-result-object v0

    new-instance v2, Lpantanal/foundation/utils/LogcatPrinter;

    invoke-direct {v2, v0}, Lpantanal/foundation/utils/LogcatPrinter;-><init>(Lcom/oplus/pantanal/log/printer/PrinterConfig;)V

    sput-object v2, Ly8/c;->c:Lcom/oplus/pantanal/log/printer/IPrinter;

    new-instance v0, Lb;

    invoke-direct {v0}, Lb;-><init>()V

    sput-object v0, Ly8/c;->b:Lb;

    new-array v1, v1, [Lcom/oplus/pantanal/log/printer/IPrinter;

    sget-object v2, Ly8/c;->c:Lcom/oplus/pantanal/log/printer/IPrinter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "printers"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lb;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {v0, v1}, Li4/t;->r(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 10

    sget-object p0, Ly8/c;->d:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_f

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    move p0, v0

    goto :goto_10

    :cond_f
    :goto_f
    move p0, v1

    :goto_10
    const-string v2, "]"

    const-string v3, "[sdk:v"

    const-string v4, "-"

    if-eqz p0, :cond_31

    sget-object p0, Ly8/c;->j:Ljava/lang/String;

    if-eqz p0, :cond_25

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_23

    goto :goto_25

    :cond_23
    move p0, v0

    goto :goto_26

    :cond_25
    :goto_25
    move p0, v1

    :goto_26
    if-eqz p0, :cond_31

    sget-object p0, Ly8/c;->g:Ljava/lang/String;

    sget-object v0, Ly8/c;->i:Ljava/lang/String;

    invoke-static {v3, p0, v4, v0, v2}, Landroidx/constraintlayout/motion/widget/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_31
    sget-object p0, Ly8/c;->d:Ljava/lang/String;

    if-eqz p0, :cond_3b

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_3c

    :cond_3b
    move v0, v1

    :cond_3c
    const-string p0, ",app:v"

    if-eqz v0, :cond_4f

    sget-object v0, Ly8/c;->g:Ljava/lang/String;

    sget-object v1, Ly8/c;->i:Ljava/lang/String;

    sget-object v5, Ly8/c;->j:Ljava/lang/String;

    invoke-static {v3, v0, v4, v1, p0}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, v5, v2}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4f
    sget-object v0, Ly8/c;->g:Ljava/lang/String;

    sget-object v1, Ly8/c;->i:Ljava/lang/String;

    sget-object v5, Ly8/c;->d:Ljava/lang/String;

    sget-object v6, Ly8/c;->e:Ljava/lang/String;

    sget-object v7, Ly8/c;->j:Ljava/lang/String;

    const-string v8, ",seed-plugin:v"

    invoke-static {v3, v0, v4, v1, v8}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v0, v5, v4, v6, p0}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v7, v2}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .registers 1

    sget-object p0, Ly8/c;->d:Ljava/lang/String;

    if-nez p0, :cond_6

    const-string p0, ""

    :cond_6
    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .registers 1

    sget-object p0, Ly8/c;->g:Ljava/lang/String;

    if-nez p0, :cond_6

    const-string p0, ""

    :cond_6
    return-object p0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V
    .registers 24

    const-string v1, "tag"

    const-string v3, "msg"

    const-string v5, "sensitiveMsg"

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    invoke-static/range {v0 .. v5}, La;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Ly8/c;->b:Lb;

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    invoke-virtual/range {v6 .. v14}, Lb;->d(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V

    sget-object v0, Ly8/c;->f:Ly8/a;

    if-eqz v0, :cond_38

    const-string v1, ","

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-static {v2, v1, v3}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v3, p1

    invoke-interface {v0, v3, v1, v2}, Ly8/a;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_38
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V
    .registers 24

    const-string v1, "tag"

    const-string v3, "msg"

    const-string v5, "sensitiveMsg"

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    invoke-static/range {v0 .. v5}, La;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Ly8/c;->b:Lb;

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    invoke-virtual/range {v6 .. v14}, Lb;->e(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V

    sget-object v0, Ly8/c;->f:Ly8/a;

    if-eqz v0, :cond_38

    const-string v1, ","

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-static {v2, v1, v3}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v3, p1

    invoke-interface {v0, v3, v1, v2}, Ly8/a;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_38
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V
    .registers 24

    const-string v1, "tag"

    const-string v3, "msg"

    const-string v5, "sensitiveMsg"

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    invoke-static/range {v0 .. v5}, La;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Ly8/c;->b:Lb;

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    invoke-virtual/range {v6 .. v14}, Lb;->i(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V

    sget-object v0, Ly8/c;->f:Ly8/a;

    if-eqz v0, :cond_38

    const-string v1, ","

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-static {v2, v1, v3}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v3, p1

    invoke-interface {v0, v3, v1, v2}, Ly8/a;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_38
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V
    .registers 24

    const-string v1, "tag"

    const-string v3, "msg"

    const-string v5, "sensitiveMsg"

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    invoke-static/range {v0 .. v5}, La;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Ly8/c;->b:Lb;

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    invoke-virtual/range {v6 .. v14}, Lb;->v(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V

    sget-object v0, Ly8/c;->f:Ly8/a;

    if-eqz v0, :cond_3e

    const-string v1, "PantaCard."

    move-object/from16 v2, p1

    invoke-static {v1, v2}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-static {v3, v2, v4}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Ly8/a;->v(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3e
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V
    .registers 24

    const-string v1, "tag"

    const-string v3, "msg"

    const-string v5, "sensitiveMsg"

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    invoke-static/range {v0 .. v5}, La;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Ly8/c;->b:Lb;

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    invoke-virtual/range {v6 .. v14}, Lb;->w(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;)V

    sget-object v0, Ly8/c;->f:Ly8/a;

    if-eqz v0, :cond_38

    const-string v1, ","

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-static {v2, v1, v3}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v3, p1

    invoke-interface {v0, v3, v1, v2}, Ly8/a;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_38
    return-void
.end method
