.class public final Lr6/c$a;
.super Lr6/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr6/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lr6/c$a;

.field public static final b:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lr6/c$a;

    invoke-direct {v0}, Lr6/c$a;-><init>()V

    sput-object v0, Lr6/c$a;->a:Lr6/c$a;

    sget-object v0, Lr6/d;->c:Lr6/d$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lr6/d;->k:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v2, Lr6/d;->i:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lr6/d;->j:I

    or-int/2addr v0, v2

    not-int v0, v0

    and-int/2addr v0, v1

    sput v0, Lr6/c$a;->b:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lr6/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 1

    sget p0, Lr6/c$a;->b:I

    return p0
.end method
