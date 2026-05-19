.class public final synthetic Lcom/oplus/statistics/record/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/statistics/util/Supplier;


# static fields
.field public static final synthetic a:Lcom/oplus/statistics/record/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/statistics/record/a;

    invoke-direct {v0}, Lcom/oplus/statistics/record/a;-><init>()V

    sput-object v0, Lcom/oplus/statistics/record/a;->a:Lcom/oplus/statistics/record/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/record/ContentProviderRecorder;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
