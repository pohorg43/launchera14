.class public final Li5/h1$b;
.super Li5/i1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li5/h1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final c:Li5/h1$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Li5/h1$b;

    invoke-direct {v0}, Li5/h1$b;-><init>()V

    sput-object v0, Li5/h1$b;->c:Li5/h1$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-string v0, "internal"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Li5/i1;-><init>(Ljava/lang/String;Z)V

    return-void
.end method
