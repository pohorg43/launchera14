.class public final synthetic Lcom/oplus/utrace/sdk/internal/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/utrace/sdk/UTraceContextV2;

.field public final synthetic b:Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

.field public final synthetic j:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/utrace/sdk/UTraceContextV2;Lcom/oplus/utrace/lib/UTraceRecordV2$Status;Ljava/lang/String;JJLjava/lang/String;IILcom/oplus/utrace/lib/UTraceRecordV2$RecordType;Ljava/util/Map;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/utrace/sdk/internal/a;->a:Lcom/oplus/utrace/sdk/UTraceContextV2;

    iput-object p2, p0, Lcom/oplus/utrace/sdk/internal/a;->b:Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    iput-object p3, p0, Lcom/oplus/utrace/sdk/internal/a;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/oplus/utrace/sdk/internal/a;->d:J

    iput-wide p6, p0, Lcom/oplus/utrace/sdk/internal/a;->e:J

    iput-object p8, p0, Lcom/oplus/utrace/sdk/internal/a;->f:Ljava/lang/String;

    iput p9, p0, Lcom/oplus/utrace/sdk/internal/a;->g:I

    iput p10, p0, Lcom/oplus/utrace/sdk/internal/a;->h:I

    iput-object p11, p0, Lcom/oplus/utrace/sdk/internal/a;->i:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    iput-object p12, p0, Lcom/oplus/utrace/sdk/internal/a;->j:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 13

    iget-object v0, p0, Lcom/oplus/utrace/sdk/internal/a;->a:Lcom/oplus/utrace/sdk/UTraceContextV2;

    iget-object v1, p0, Lcom/oplus/utrace/sdk/internal/a;->b:Lcom/oplus/utrace/lib/UTraceRecordV2$Status;

    iget-object v2, p0, Lcom/oplus/utrace/sdk/internal/a;->c:Ljava/lang/String;

    iget-wide v3, p0, Lcom/oplus/utrace/sdk/internal/a;->d:J

    iget-wide v5, p0, Lcom/oplus/utrace/sdk/internal/a;->e:J

    iget-object v7, p0, Lcom/oplus/utrace/sdk/internal/a;->f:Ljava/lang/String;

    iget v8, p0, Lcom/oplus/utrace/sdk/internal/a;->g:I

    iget v9, p0, Lcom/oplus/utrace/sdk/internal/a;->h:I

    iget-object v10, p0, Lcom/oplus/utrace/sdk/internal/a;->i:Lcom/oplus/utrace/lib/UTraceRecordV2$RecordType;

    iget-object v11, p0, Lcom/oplus/utrace/sdk/internal/a;->j:Ljava/util/Map;

    invoke-static/range {v0 .. v11}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->c(Lcom/oplus/utrace/sdk/UTraceContextV2;Lcom/oplus/utrace/lib/UTraceRecordV2$Status;Ljava/lang/String;JJLjava/lang/String;IILcom/oplus/utrace/lib/UTraceRecordV2$RecordType;Ljava/util/Map;)V

    return-void
.end method
