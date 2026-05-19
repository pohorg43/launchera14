.class public final Li5/h1$d;
.super Li5/i1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li5/h1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final c:Li5/h1$d;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Li5/h1$d;

    invoke-direct {v0}, Li5/h1$d;-><init>()V

    sput-object v0, Li5/h1$d;->c:Li5/h1$d;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-string v0, "local"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Li5/i1;-><init>(Ljava/lang/String;Z)V

    return-void
.end method
