.class public abstract Lcom/arthenica/smartexception/AbstractExceptions;
.super Ljava/lang/Object;
.source "AbstractExceptions.java"


# static fields
.field public static final DEFAULT_IGNORE_ALL_CAUSES:Z = false

.field public static final DEFAULT_MAX_DEPTH:I = 0xa

.field public static final groupPackageSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static ignoreAllCauses:Z

.field public static final ignoreCausePackageSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ignorePackageSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final rootPackageSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static stackTraceElementSerializer:Lcom/arthenica/smartexception/StackTraceElementSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/arthenica/smartexception/AbstractExceptions;->rootPackageSet:Ljava/util/Set;

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/arthenica/smartexception/AbstractExceptions;->groupPackageSet:Ljava/util/Set;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/arthenica/smartexception/AbstractExceptions;->ignorePackageSet:Ljava/util/Set;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/arthenica/smartexception/AbstractExceptions;->ignoreCausePackageSet:Ljava/util/Set;

    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lcom/arthenica/smartexception/AbstractExceptions;->ignoreAllCauses:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendStackTraceGroupElement(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/StackTraceElement;)I
    .locals 2
    .param p0, "stringBuilder"    # Ljava/lang/StringBuilder;
    .param p1, "currentGroupPackage"    # Ljava/lang/String;
    .param p2, "numberOfElementsInTheCurrentGroup"    # I
    .param p3, "firstStackTraceElementInTheGroup"    # Ljava/lang/StackTraceElement;

    .line 390
    if-lez p2, :cond_2

    .line 391
    sget-object v0, Lcom/arthenica/smartexception/AbstractExceptions;->stackTraceElementSerializer:Lcom/arthenica/smartexception/StackTraceElementSerializer;

    if-eqz v0, :cond_1

    .line 394
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/arthenica/smartexception/AbstractExceptions;->stackTraceElementSerializer:Lcom/arthenica/smartexception/StackTraceElementSerializer;

    invoke-interface {v0, p3}, Lcom/arthenica/smartexception/StackTraceElementSerializer;->toString(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/arthenica/smartexception/AbstractExceptions;->stackTraceElementSerializer:Lcom/arthenica/smartexception/StackTraceElementSerializer;

    invoke-interface {v0, p3}, Lcom/arthenica/smartexception/StackTraceElementSerializer;->getModuleName(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, p1, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s%s ... %d more"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 392
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stack trace element serializer not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static clearGroupPackages()V
    .locals 1

    .line 117
    sget-object v0, Lcom/arthenica/smartexception/AbstractExceptions;->groupPackageSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 118
    return-void
.end method

.method public static clearIgnorePackages()V
    .locals 1

    .line 157
    sget-object v0, Lcom/arthenica/smartexception/AbstractExceptions;->ignorePackageSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 158
    sget-object v0, Lcom/arthenica/smartexception/AbstractExceptions;->ignoreCausePackageSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 159
    return-void
.end method

.method public static clearRootPackages()V
    .locals 1

    .line 101
    sget-object v0, Lcom/arthenica/smartexception/AbstractExceptions;->rootPackageSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 102
    return-void
.end method

.method public static containsCause(Ljava/lang/Throwable;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 533
    .local p1, "causeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/arthenica/smartexception/AbstractExceptions;->containsCause(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static containsCause(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p2, "causeMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 551
    .local p1, "causeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v0, 0xa

    invoke-static {p0, p1, p2, v0}, Lcom/arthenica/smartexception/AbstractExceptions;->searchCause(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static containsPackage(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 1
    .param p0, "fullClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 411
    .local p1, "packageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/arthenica/smartexception/AbstractExceptions;->getContainingPackage(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getAllMessages(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 441
    .local v0, "messageBuilder":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lcom/arthenica/smartexception/AbstractExceptions;->getAllMessages(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 442
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAllMessages(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "messageBuilder"    # Ljava/lang/StringBuilder;

    .line 452
    if-eqz p0, :cond_2

    .line 453
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "message":Ljava/lang/String;
    invoke-static {v0}, Lcom/arthenica/smartexception/AbstractExceptions;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 455
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string v1, " - Caused by: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/arthenica/smartexception/AbstractExceptions;->getAllMessages(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    .line 463
    .end local v0    # "message":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 561
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/arthenica/smartexception/AbstractExceptions;->getCause(Ljava/lang/Throwable;I)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static getCause(Ljava/lang/Throwable;I)Ljava/lang/Throwable;
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "maxDepth"    # I

    .line 577
    if-nez p0, :cond_0

    .line 578
    const/4 v0, 0x0

    return-object v0

    .line 581
    :cond_0
    if-gtz p1, :cond_1

    .line 582
    return-object p0

    .line 585
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 586
    .local v0, "cause":Ljava/lang/Throwable;
    if-nez v0, :cond_2

    .line 587
    return-object p0

    .line 589
    :cond_2
    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Lcom/arthenica/smartexception/AbstractExceptions;->getCause(Ljava/lang/Throwable;I)Ljava/lang/Throwable;

    move-result-object v1

    return-object v1
.end method

.method public static getContainingPackage(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;
    .locals 3
    .param p0, "fullClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 424
    .local p1, "packageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 425
    .local v1, "parentExceptionPackage":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 426
    return-object v1

    .line 428
    .end local v1    # "parentExceptionPackage":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 430
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getIgnoreAllCauses()Z
    .locals 1

    .line 169
    sget-boolean v0, Lcom/arthenica/smartexception/AbstractExceptions;->ignoreAllCauses:Z

    return v0
.end method

.method public static getStackTrace(Ljava/lang/Throwable;I)[Ljava/lang/StackTraceElement;
    .locals 4
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "maxDepth"    # I

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/StackTraceElement;>;"
    if-eqz p0, :cond_0

    .line 477
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 478
    .local v1, "stackTrace":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    if-ge v2, p1, :cond_0

    .line 479
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 483
    .end local v1    # "stackTrace":[Ljava/lang/StackTraceElement;
    .end local v2    # "i":I
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/StackTraceElement;

    return-object v1
.end method

.method public static getStackTrace(Ljava/lang/Throwable;Ljava/util/Set;Ljava/util/Set;)[Ljava/lang/StackTraceElement;
    .locals 9
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/StackTraceElement;"
        }
    .end annotation

    .line 496
    .local p1, "rootPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "ignorePackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/StackTraceElement;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .local v1, "partialList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/StackTraceElement;>;"
    const/4 v2, 0x0

    if-eqz p0, :cond_2

    .line 500
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 501
    .local v6, "stackTraceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    .line 502
    .local v7, "className":Ljava/lang/String;
    invoke-static {v7}, Lcom/arthenica/smartexception/AbstractExceptions;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 503
    invoke-static {v7, p1}, Lcom/arthenica/smartexception/AbstractExceptions;->containsPackage(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 504
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 505
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 506
    :cond_0
    invoke-static {v7, p2}, Lcom/arthenica/smartexception/AbstractExceptions;->containsPackage(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 507
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    .end local v6    # "stackTraceElement":Ljava/lang/StackTraceElement;
    .end local v7    # "className":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 513
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 514
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 517
    :cond_3
    new-array v2, v2, [Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/StackTraceElement;

    return-object v2
.end method

.method public static getStackTraceElementSerializer()Lcom/arthenica/smartexception/StackTraceElementSerializer;
    .locals 1

    .line 127
    sget-object v0, Lcom/arthenica/smartexception/AbstractExceptions;->stackTraceElementSerializer:Lcom/arthenica/smartexception/StackTraceElementSerializer;

    return-object v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 7
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 194
    sget-object v2, Lcom/arthenica/smartexception/AbstractExceptions;->rootPackageSet:Ljava/util/Set;

    sget-object v3, Lcom/arthenica/smartexception/AbstractExceptions;->groupPackageSet:Ljava/util/Set;

    sget-object v4, Lcom/arthenica/smartexception/AbstractExceptions;->ignorePackageSet:Ljava/util/Set;

    const/4 v5, 0x0

    sget-boolean v6, Lcom/arthenica/smartexception/AbstractExceptions;->ignoreAllCauses:Z

    const/4 v1, 0x0

    move-object v0, p0

    .end local p0    # "throwable":Ljava/lang/Throwable;
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static/range {v0 .. v6}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Ljava/lang/Throwable;ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;I)Ljava/lang/String;
    .locals 7
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "maxDepth"    # I

    .line 270
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    sget-boolean v6, Lcom/arthenica/smartexception/AbstractExceptions;->ignoreAllCauses:Z

    const/4 v1, 0x0

    move-object v0, p0

    move v5, p1

    .end local p0    # "throwable":Ljava/lang/Throwable;
    .end local p1    # "maxDepth":I
    .local v0, "throwable":Ljava/lang/Throwable;
    .local v5, "maxDepth":I
    invoke-static/range {v0 .. v6}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Ljava/lang/Throwable;ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;IZ)Ljava/lang/String;
    .locals 7
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "maxDepth"    # I
    .param p2, "ignoreAllCauses"    # Z

    .line 282
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move-object v0, p0

    move v5, p1

    move v6, p2

    .end local p0    # "throwable":Ljava/lang/Throwable;
    .end local p1    # "maxDepth":I
    .end local p2    # "ignoreAllCauses":Z
    .local v0, "throwable":Ljava/lang/Throwable;
    .local v5, "maxDepth":I
    .local v6, "ignoreAllCauses":Z
    invoke-static/range {v0 .. v6}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Ljava/lang/Throwable;ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "rootPackage"    # Ljava/lang/String;

    .line 247
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    sget-boolean v6, Lcom/arthenica/smartexception/AbstractExceptions;->ignoreAllCauses:Z

    const/4 v1, 0x0

    move-object v0, p0

    .end local p0    # "throwable":Ljava/lang/Throwable;
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static/range {v0 .. v6}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Ljava/lang/Throwable;ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "rootPackage"    # Ljava/lang/String;
    .param p2, "groupPackage"    # Ljava/lang/String;

    .line 259
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    sget-boolean v6, Lcom/arthenica/smartexception/AbstractExceptions;->ignoreAllCauses:Z

    const/4 v1, 0x0

    move-object v0, p0

    .end local p0    # "throwable":Ljava/lang/Throwable;
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static/range {v0 .. v6}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Ljava/lang/Throwable;ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Ljava/lang/String;
    .locals 7
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 222
    .local p1, "rootPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "groupPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "ignorePackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    sget-boolean v6, Lcom/arthenica/smartexception/AbstractExceptions;->ignoreAllCauses:Z

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .end local p0    # "throwable":Ljava/lang/Throwable;
    .end local p1    # "rootPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p2    # "groupPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p3    # "ignorePackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v0, "throwable":Ljava/lang/Throwable;
    .local v2, "rootPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v3, "groupPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v4, "ignorePackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static/range {v0 .. v6}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Ljava/lang/Throwable;ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Z)Ljava/lang/String;
    .locals 7
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p4, "ignoreAllCauses"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 236
    .local p1, "rootPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "groupPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "ignorePackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v6, p4

    .end local p0    # "throwable":Ljava/lang/Throwable;
    .end local p1    # "rootPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p2    # "groupPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p3    # "ignorePackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p4    # "ignoreAllCauses":Z
    .local v0, "throwable":Ljava/lang/Throwable;
    .local v2, "rootPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v3, "groupPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v4, "ignorePackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v6, "ignoreAllCauses":Z
    invoke-static/range {v0 .. v6}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Ljava/lang/Throwable;ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;Z)Ljava/lang/String;
    .locals 7
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "ignoreAllCauses"    # Z

    .line 209
    sget-object v2, Lcom/arthenica/smartexception/AbstractExceptions;->rootPackageSet:Ljava/util/Set;

    sget-object v3, Lcom/arthenica/smartexception/AbstractExceptions;->groupPackageSet:Ljava/util/Set;

    sget-object v4, Lcom/arthenica/smartexception/AbstractExceptions;->ignorePackageSet:Ljava/util/Set;

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v6, p1

    .end local p0    # "throwable":Ljava/lang/Throwable;
    .end local p1    # "ignoreAllCauses":Z
    .local v0, "throwable":Ljava/lang/Throwable;
    .local v6, "ignoreAllCauses":Z
    invoke-static/range {v0 .. v6}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Ljava/lang/Throwable;ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;IZ)Ljava/lang/String;
    .locals 18
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "isCause"    # Z
    .param p5, "maxDepth"    # I
    .param p6, "ignoreAllCauses"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 298
    .local p2, "rootPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "groupPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, "ignorePackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move/from16 v6, p5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v1

    .line 300
    .local v8, "builder":Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 301
    const-string v1, ""

    return-object v1

    .line 304
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 307
    .local v9, "className":Ljava/lang/String;
    if-lez v6, :cond_1

    .line 308
    invoke-static {v0, v6}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTrace(Ljava/lang/Throwable;I)[Ljava/lang/StackTraceElement;

    move-result-object v1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object v10, v1

    .local v1, "stackTraceElements":[Ljava/lang/StackTraceElement;
    goto :goto_0

    .line 310
    .end local v1    # "stackTraceElements":[Ljava/lang/StackTraceElement;
    :cond_1
    move-object/from16 v3, p2

    move-object/from16 v5, p4

    invoke-static {v0, v3, v5}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTrace(Ljava/lang/Throwable;Ljava/util/Set;Ljava/util/Set;)[Ljava/lang/StackTraceElement;

    move-result-object v1

    move-object v10, v1

    .line 312
    .local v10, "stackTraceElements":[Ljava/lang/StackTraceElement;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "message":Ljava/lang/String;
    invoke-static {v1}, Lcom/arthenica/smartexception/AbstractExceptions;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 314
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    goto :goto_1

    .line 313
    :cond_2
    move-object v11, v1

    .line 318
    .end local v1    # "message":Ljava/lang/String;
    .local v11, "message":Ljava/lang/String;
    :goto_1
    const-string v1, ": "

    if-eqz p1, :cond_3

    .line 319
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string v2, "Caused by: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-static {v11}, Lcom/arthenica/smartexception/AbstractExceptions;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 323
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 327
    :cond_3
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-static {v11}, Lcom/arthenica/smartexception/AbstractExceptions;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 330
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_4
    :goto_2
    const/4 v1, 0x0

    .line 337
    .local v1, "currentGroupPackage":Ljava/lang/String;
    const/4 v2, 0x0

    .line 338
    .local v2, "firstStackTraceElementInTheGroup":Ljava/lang/StackTraceElement;
    const/4 v4, 0x0

    .line 339
    .local v4, "currentGroupCount":I
    array-length v7, v10

    const/4 v12, 0x0

    move v13, v12

    move-object v12, v1

    move v1, v13

    move-object v13, v2

    move v14, v4

    .end local v1    # "currentGroupPackage":Ljava/lang/String;
    .end local v2    # "firstStackTraceElementInTheGroup":Ljava/lang/StackTraceElement;
    .end local v4    # "currentGroupCount":I
    .local v12, "currentGroupPackage":Ljava/lang/String;
    .local v13, "firstStackTraceElementInTheGroup":Ljava/lang/StackTraceElement;
    .local v14, "currentGroupCount":I
    :goto_3
    if-ge v1, v7, :cond_8

    aget-object v2, v10, v1

    .line 340
    .local v2, "traceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, "traceElementClassName":Ljava/lang/String;
    move-object/from16 v15, p3

    invoke-static {v4, v15}, Lcom/arthenica/smartexception/AbstractExceptions;->getContainingPackage(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "groupPackageMatch":Ljava/lang/String;
    move/from16 v16, v1

    const-string v1, "\tat "

    if-eqz v0, :cond_6

    .line 344
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 345
    invoke-static {v8, v12, v14, v13}, Lcom/arthenica/smartexception/AbstractExceptions;->appendStackTraceGroupElement(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/StackTraceElement;)I

    .line 347
    move-object/from16 v17, v0

    .end local v0    # "groupPackageMatch":Ljava/lang/String;
    .local v17, "groupPackageMatch":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    move-object/from16 v0, v17

    .line 351
    .end local v12    # "currentGroupPackage":Ljava/lang/String;
    .local v0, "currentGroupPackage":Ljava/lang/String;
    move-object v1, v2

    .line 352
    .end local v13    # "firstStackTraceElementInTheGroup":Ljava/lang/StackTraceElement;
    .local v1, "firstStackTraceElementInTheGroup":Ljava/lang/StackTraceElement;
    const/4 v12, 0x1

    move-object v13, v1

    move v14, v12

    move-object v12, v0

    .end local v14    # "currentGroupCount":I
    .local v12, "currentGroupCount":I
    goto :goto_4

    .line 354
    .end local v1    # "firstStackTraceElementInTheGroup":Ljava/lang/StackTraceElement;
    .end local v17    # "groupPackageMatch":Ljava/lang/String;
    .local v0, "groupPackageMatch":Ljava/lang/String;
    .local v12, "currentGroupPackage":Ljava/lang/String;
    .restart local v13    # "firstStackTraceElementInTheGroup":Ljava/lang/StackTraceElement;
    .restart local v14    # "currentGroupCount":I
    :cond_5
    move-object/from16 v17, v0

    .end local v0    # "groupPackageMatch":Ljava/lang/String;
    .restart local v17    # "groupPackageMatch":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 357
    .end local v17    # "groupPackageMatch":Ljava/lang/String;
    .restart local v0    # "groupPackageMatch":Ljava/lang/String;
    :cond_6
    move-object/from16 v17, v0

    .end local v0    # "groupPackageMatch":Ljava/lang/String;
    .restart local v17    # "groupPackageMatch":Ljava/lang/String;
    invoke-static {v8, v12, v14, v13}, Lcom/arthenica/smartexception/AbstractExceptions;->appendStackTraceGroupElement(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/StackTraceElement;)I

    move-result v0

    .line 359
    .end local v14    # "currentGroupCount":I
    .local v0, "currentGroupCount":I
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    sget-object v1, Lcom/arthenica/smartexception/AbstractExceptions;->stackTraceElementSerializer:Lcom/arthenica/smartexception/StackTraceElementSerializer;

    if-eqz v1, :cond_7

    .line 364
    sget-object v1, Lcom/arthenica/smartexception/AbstractExceptions;->stackTraceElementSerializer:Lcom/arthenica/smartexception/StackTraceElementSerializer;

    invoke-interface {v1, v2}, Lcom/arthenica/smartexception/StackTraceElementSerializer;->toString(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const/4 v1, 0x0

    move v14, v0

    move-object v12, v1

    .line 339
    .end local v0    # "currentGroupCount":I
    .end local v2    # "traceElement":Ljava/lang/StackTraceElement;
    .end local v4    # "traceElementClassName":Ljava/lang/String;
    .end local v17    # "groupPackageMatch":Ljava/lang/String;
    .restart local v14    # "currentGroupCount":I
    :goto_4
    add-int/lit8 v1, v16, 0x1

    move-object/from16 v0, p0

    goto :goto_3

    .line 362
    .end local v14    # "currentGroupCount":I
    .restart local v0    # "currentGroupCount":I
    .restart local v2    # "traceElement":Ljava/lang/StackTraceElement;
    .restart local v4    # "traceElementClassName":Ljava/lang/String;
    .restart local v17    # "groupPackageMatch":Ljava/lang/String;
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v7, "Stack trace element serializer not initialized."

    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 370
    .end local v0    # "currentGroupCount":I
    .end local v2    # "traceElement":Ljava/lang/StackTraceElement;
    .end local v4    # "traceElementClassName":Ljava/lang/String;
    .end local v17    # "groupPackageMatch":Ljava/lang/String;
    .restart local v14    # "currentGroupCount":I
    :cond_8
    move-object/from16 v15, p3

    invoke-static {v8, v12, v14, v13}, Lcom/arthenica/smartexception/AbstractExceptions;->appendStackTraceGroupElement(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/StackTraceElement;)I

    .line 372
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 373
    .local v1, "cause":Ljava/lang/Throwable;
    if-eqz v1, :cond_9

    sget-object v0, Lcom/arthenica/smartexception/AbstractExceptions;->ignoreCausePackageSet:Ljava/util/Set;

    invoke-static {v9, v0}, Lcom/arthenica/smartexception/AbstractExceptions;->containsPackage(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_9

    if-nez p6, :cond_9

    .line 374
    const/4 v2, 0x1

    move/from16 v7, p6

    move-object v4, v15

    invoke-static/range {v1 .. v7}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Ljava/lang/Throwable;ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    :cond_9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 706
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 707
    return v0

    .line 710
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static packageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .line 720
    const-string v0, ""

    if-nez p0, :cond_0

    .line 721
    return-object v0

    .line 724
    :cond_0
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 725
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 726
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 728
    :cond_1
    return-object v0
.end method

.method public static registerGroupPackage(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageString"    # Ljava/lang/String;

    .line 110
    sget-object v0, Lcom/arthenica/smartexception/AbstractExceptions;->groupPackageSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method public static registerIgnorePackage(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "packageString"    # Ljava/lang/String;
    .param p1, "ignoreCauseClasses"    # Z

    .line 147
    sget-object v0, Lcom/arthenica/smartexception/AbstractExceptions;->ignorePackageSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    if-eqz p1, :cond_0

    .line 149
    sget-object v0, Lcom/arthenica/smartexception/AbstractExceptions;->ignoreCausePackageSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_0
    return-void
.end method

.method public static registerRootPackage(Ljava/lang/String;)V
    .locals 1
    .param p0, "packageString"    # Ljava/lang/String;

    .line 94
    sget-object v0, Lcom/arthenica/smartexception/AbstractExceptions;->rootPackageSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public static searchCause(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 605
    .local p1, "causeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-static {p0, p1, v0, v1}, Lcom/arthenica/smartexception/AbstractExceptions;->searchCause(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static searchCause(Ljava/lang/Throwable;Ljava/lang/Class;I)Ljava/lang/Throwable;
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 679
    .local p1, "causeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 680
    return-object v0

    .line 683
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 684
    return-object p0

    .line 687
    :cond_1
    if-gtz p2, :cond_2

    .line 688
    return-object v0

    .line 691
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 692
    .local v1, "cause":Ljava/lang/Throwable;
    if-nez v1, :cond_3

    .line 693
    return-object v0

    .line 695
    :cond_3
    add-int/lit8 v0, p2, -0x1

    invoke-static {v1, p1, v0}, Lcom/arthenica/smartexception/AbstractExceptions;->searchCause(Ljava/lang/Throwable;Ljava/lang/Class;I)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static searchCause(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p2, "causeMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 622
    .local p1, "causeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v0, 0xa

    invoke-static {p0, p1, p2, v0}, Lcom/arthenica/smartexception/AbstractExceptions;->searchCause(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static searchCause(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/Throwable;
    .locals 3
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p2, "causeMessage"    # Ljava/lang/String;
    .param p3, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 640
    .local p1, "causeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 641
    return-object v0

    .line 644
    :cond_0
    invoke-static {p2}, Lcom/arthenica/smartexception/AbstractExceptions;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 645
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 646
    return-object p0

    .line 649
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/arthenica/smartexception/AbstractExceptions;->getAllMessages(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 650
    return-object p0

    .line 654
    :cond_2
    if-gtz p3, :cond_3

    .line 655
    return-object v0

    .line 658
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 659
    .local v1, "cause":Ljava/lang/Throwable;
    if-nez v1, :cond_4

    .line 660
    return-object v0

    .line 662
    :cond_4
    add-int/lit8 v0, p3, -0x1

    invoke-static {v1, p1, p2, v0}, Lcom/arthenica/smartexception/AbstractExceptions;->searchCause(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static setIgnoreAllCauses(Z)V
    .locals 0
    .param p0, "ignoreAllCauses"    # Z

    .line 180
    sput-boolean p0, Lcom/arthenica/smartexception/AbstractExceptions;->ignoreAllCauses:Z

    .line 181
    return-void
.end method

.method public static setStackTraceElementSerializer(Lcom/arthenica/smartexception/StackTraceElementSerializer;)V
    .locals 0
    .param p0, "stackTraceElementSerializer"    # Lcom/arthenica/smartexception/StackTraceElementSerializer;

    .line 137
    sput-object p0, Lcom/arthenica/smartexception/AbstractExceptions;->stackTraceElementSerializer:Lcom/arthenica/smartexception/StackTraceElementSerializer;

    .line 138
    return-void
.end method
