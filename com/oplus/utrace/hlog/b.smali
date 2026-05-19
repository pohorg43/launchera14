.class public final synthetic Lcom/oplus/utrace/hlog/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic a:Lcom/oplus/utrace/hlog/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/utrace/hlog/b;

    invoke-direct {v0}, Lcom/oplus/utrace/hlog/b;-><init>()V

    sput-object v0, Lcom/oplus/utrace/hlog/b;->a:Lcom/oplus/utrace/hlog/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/oplus/utrace/hlog/HLogReceiver$Companion;->b(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method
