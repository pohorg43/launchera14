.class public final Lm7/l1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm7/j0;


# static fields
.field public static final a:Lm7/l1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lm7/l1;

    invoke-direct {v0}, Lm7/l1;-><init>()V

    sput-object v0, Lm7/l1;->a:Lm7/l1;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoroutineContext()Ll4/f;
    .registers 1

    sget-object p0, Ll4/h;->a:Ll4/h;

    return-object p0
.end method
