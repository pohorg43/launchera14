.class public Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/ActiveGestureLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompoundString"
.end annotation


# static fields
.field public static final NO_OP:Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;


# instance fields
.field private final mIsNoOp:Z

.field private final mSubstrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    invoke-direct {v0}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;-><init>()V

    sput-object v0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->NO_OP:Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iput-boolean v0, p0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mIsNoOp:Z

    if-eqz v0, :cond_10

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mSubstrings:Ljava/util/List;

    return-void

    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mSubstrings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public append(Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mIsNoOp:Z

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    iget-object v0, p0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mSubstrings:Ljava/util/List;

    iget-object p1, p1, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mSubstrings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public append(Ljava/lang/String;)Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mIsNoOp:Z

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    iget-object v0, p0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mSubstrings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;

    iget-boolean v0, p0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mIsNoOp:Z

    iget-boolean v2, p1, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mIsNoOp:Z

    if-ne v0, v2, :cond_19

    iget-object p0, p0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mSubstrings:Ljava/util/List;

    iget-object p1, p1, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mSubstrings:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mIsNoOp:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mSubstrings:Ljava/util/List;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-boolean v0, p0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mIsNoOp:Z

    if-eqz v0, :cond_7

    const-string p0, "ERROR: cannot use No-Op compound string"

    return-object p0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/quickstep/util/ActiveGestureLog$CompoundString;->mSubstrings:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
